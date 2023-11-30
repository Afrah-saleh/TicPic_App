//
//  Main_View.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//

import SwiftUI

struct Main_View: View {
    let user: User
    var body: some View {
        NavigationView {
            ZStack {
               
                Image("Logo")
                    .renderingMode(.none)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .offset(x: 7, y: 340)
                    .opacity(0.3)

                VStack {
                    NavigationLink(destination: NavigationBar(newTask: Tasks.MOCK_TASK[0]).navigationBarBackButtonHidden(true)) {
                            Text("Skip")
                                .foregroundColor(Color("orange2"))
                   
                    } .offset(x: 140, y: -250) 
                    Text("Where to achieve your goals **together**")
                        .fontWeight(.regular)
                        .lineLimit(4)
                        .font(.largeTitle)
                        .foregroundColor(Color("Background"))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .offset(x: 0, y: -50)

                    NavigationLink(destination: NavigationBar(newTask: Tasks.MOCK_TASK[0]).navigationBarBackButtonHidden(true))  {
                        HStack {
                            Label("Sign in", systemImage: "person.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                                .bold()
                                .frame(width: 300, height: 10)
                                .padding()
                                .background(Color("orange2"))
                                .cornerRadius(10)
                        }
                    } // 1st Navlink ends

                    HStack {
                        Text("Create new account?")
                            .foregroundColor(Color("orange2"))

                        NavigationLink(destination: NavigationBar(newTask: Tasks.MOCK_TASK[0]).navigationBarBackButtonHidden(true))  {
                            Text("**Create Account**")
                                .foregroundColor(Color("orange2"))
                        }
                        
                    } // 2nd Navlink ends

                 

                }
            }
        }
        
    }
}


#Preview {
    Main_View(user: User.USERS[0])
}
