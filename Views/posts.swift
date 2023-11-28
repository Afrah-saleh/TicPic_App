//
//  posts.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//

import SwiftUI

struct posts: View {
    var body: some View {
        
        //main vs
        NavigationStack{
            ScrollView(showsIndicators : false){
                VStack (spacing : 20){
                    
                    Divider()
                        .background(Color("Orange"))
                        .frame(width: 370)
                     
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
            .navigationTitle("Post")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                
                ToolbarItem(placement: .navigationBarTrailing){
                    
                    Button{
                        
                    }
                 label:{
                    Image(systemName: "person.crop.circle.fill.badge.plus")
                        .foregroundColor(.black)
                        .padding(30)
                            
                }
                }
            }//end of tool bar
            
        }
    }
}

#Preview {
    posts()
}
