//
//  posts.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//

import SwiftUI

struct posts: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        
        //main vs
        NavigationStack{
            ScrollView(showsIndicators : false){
                VStack (spacing : 20){
                    
                    Divider()
                        .background(Color("Orange"))
                        .frame(width: 400)
                     
                    Text("See your friends’ accomplished !")
                        .padding(30)
//                        .padding(.trailing ,100)
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .font(.subheadline)
                    
                    //for list of images
                  
                        //
                        ForEach(1 ... 5 , id : \.self) { _ in
                            ImagesView()
                  
                    }
                }
            }
          
         // 1st Navlink ends
            
            .toolbar{
                
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink(destination: Follwers().navigationBarBackButtonHidden(false))  {
                        HStack {
                        label:do {
                            Image(systemName: "person.crop.circle.fill.badge.plus")
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                                .padding(.leading)
                            
                        }
                        }
                    }
                }
            }
                
            .background(Color("Second_color"))
            .navigationTitle("Post")
            .navigationBarTitleDisplayMode(.large)
        }
   }
}

#Preview {
    posts()
}
