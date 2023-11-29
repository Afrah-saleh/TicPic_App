//
//  Invetations2.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 15/05/1445 AH.
//

import SwiftUI

struct Invetations2: View {
    @State private var users: [User] = User.USERS
    var body: some View {
       // Form {
            List {
                ForEach(User.USERS) { user in
                    HStack {
                        Image(user.profileImage ?? "")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 70)
                            .clipShape(Circle())
                            .padding(.horizontal, 20)
                            .offset(x: 0)
                        VStack {
                            Text(user.fullName ?? "")
                                .bold()

                            Text(user.userName)
                                .foregroundColor(.secondary.opacity(0.8))
                                .fontWeight(.light)
                                
                        } .offset(x:10)
                        Spacer() // Add spacer to fill remaining space

                                         // Add accept icon
                                         Image(systemName: "checkmark.circle")
                                             .resizable()
                                             .scaledToFit()
                                             .frame(width: 20, height: 20)
                        

                                           
                                         // Add reject icon
                                         Image(systemName: "multiply.circle")
                                             .resizable()
                                             .scaledToFit()
                                             .frame(width: 20, height: 20)
                                             .foregroundColor(Color("orange2"))
                                             .padding(.leading,2)
                    }
                }
              .listRowBackground(Color.clear)
            }
           // Set list item background color
            .background(.clear)
            .scrollContentBackground(.hidden)
            
        //  }
  
    }
    

    }

#Preview {
    Invetations2()
}
