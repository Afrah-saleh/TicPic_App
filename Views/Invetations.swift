//
//  Invetations.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//


import SwiftUI

struct Invetations: View {
    var body: some View {
        
       ScrollView{
                ForEach(User.USERS ){ user in
                    LazyVStack(spacing:12) {
                        ZStack{
                            Color.white
                                .frame(width: 340 , height: 90)
                                .cornerRadius(12)
                                .shadow(radius: 1 , x: 1 , y:1)
                            HStack{
                                Spacer()
                                Image(user.profileImage ?? "")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70 , height: 90)
                                    .clipShape(Circle())
                                    .padding()
                                
                                VStack(){
                                    
                                    Text(user.fullName ?? "")
                                        .bold()
                                    
                                    Text(user.userName)
                                        .foregroundStyle(.secondary.opacity(0.8))
                                        .fontWeight(.light)
                                    
                                    
                                }
                                
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    HStack{
                                        Image(systemName: "person.crop.circle.fill.badge.plus")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 20 , height: 20)
                                        Text("Accept")
                                            .bold()
                                        
                                    }
                                    
                                    
                                })
                                .foregroundColor(.white)
                                .frame(width: 100 , height: 30)
                                .background(Color("Orange"))
                                .cornerRadius(12)
                                .padding(.leading , 2)
                                
                                Spacer()
                                Spacer()
                                
                            }
                         
                        }
                    }
//                .padding(.trailing ,150)
                .padding(.vertical ,-10)
            }
        }
    }
}


#Preview {
    Invetations()
}


