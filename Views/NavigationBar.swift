//
//  NavigationBar.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 13/05/1445 AH.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        ZStack{
            //NavigationView {
            TabView {
                
                SwiftUIView()
                
                    .tabItem {
                        Label("Discover", systemImage: "square.grid.2x2.fill")
                        
                        
                    }
                
                
                Calender()
                    .tabItem {
                        Label("Friends", systemImage: "person.3.fill")
                    }
                
                Settings()
                
                    .tabItem {
                        Label("Account", systemImage: "person.crop.circle.fill")
                        
                    }
            }
            .accentColor(Color("Background"))
            
        }
    }
}

#Preview {
    NavigationBar()
}
