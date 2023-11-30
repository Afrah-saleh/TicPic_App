//
//  CamiraView.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//

import SwiftUI

struct CamiraView: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    
    
    var body: some View {
        
       NavigationView {
                   VStack {
                       Spacer()
                       if selectedImage != nil {
                           Image(uiImage: selectedImage!)
                               .resizable()
                               .clipShape(Rectangle())
                               .cornerRadius(20)
                               .frame(width: 350, height: 480)
                               .shadow(radius: 1 , x:2 ,y: 2 )

                               
                       }

                       
                       Button("+") {
                           
                           self.sourceType = .camera
                           self.isImagePickerDisplay.toggle()
                       }.padding()

                    Spacer()
                       HStack (spacing:14){
                           
                           Button(action: {
                               
                               self.sourceType = .camera
                               self.isImagePickerDisplay.toggle()
                           }, label: {
                               
                               Text("Retcke")
                                   .foregroundColor(.white)
                                   .bold()
                                   .frame(width: 104 , height: 39)
                                   .background(Color.secondary)
                                   .cornerRadius(12)
                           })
                           
                           Button(action: {
                               
                               //ExploreView ??
                               
                               
                           }, label: {
                               
                               Text("Publish")
                                   .foregroundColor(.white)
                                   .bold()
                                   .frame(width: 104 , height: 39)
                                   .background(Color("orange2"))
                                   .cornerRadius(12)
                           })
                       }
                   }
//                   .navigationBarTitle("test")
                   .sheet(isPresented: self.$isImagePickerDisplay) {
                       ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
                   }
                   .navigationBarTitle(Text("Discover"))
                   .navigationBarTitleDisplayMode(.inline)
               }
       
 }
}

#Preview {
    CamiraView()
}
