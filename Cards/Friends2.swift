//
//  Friends2.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 15/05/1445 AH.
//

import SwiftUI

struct Friends2: View {
    var body: some View {
        Form{
            Section("") {
                ForEach(User.USERS ){ user in
                    HStack{
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
                    }
                   
                }
            }
        }
    }
}
#Preview {
    Friends2()
}
