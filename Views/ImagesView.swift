//
//  ImagesView.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//

import SwiftUI

struct ImagesView: View {
    
    var body: some View {
        
        ZStack{
            
            Image("1")
                .resizable()
                .clipShape(Rectangle())
                .cornerRadius(20)
                .frame(width: 350, height: 480)
                .shadow(radius: 1 , x:2 ,y: 2 )
         
            HStack {
                
                Button{
                    
                }
                label : {
                    Image("Profile")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width:80 , height: 80)
                       
                    VStack(alignment: .leading) {
                        Text("Waad Abdullah")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Text("Clean My Bed Room")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                            .strikethrough(color : Color("Orange"))
                            
                    }
        
                }
                .padding(.top , 350)
                .padding(.trailing ,110)
                
            }
        }
        
    }
}

#Preview {
    ImagesView()
}
