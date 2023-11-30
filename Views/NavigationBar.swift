//
//  NavigationBar.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 13/05/1445 AH.
//

import SwiftUI

struct NavigationBar: View {
    //let user: User
    @State private var selectedIndex = 0
    let newTask: Tasks
    
    var body: some View {
        ZStack{
            //NavigationView {
            TabView(selection: $selectedIndex){
                
                Discover(newTask: Tasks.MOCK_TASK[0])
                    .onAppear(){
                        selectedIndex = 0
                    }
                    .tabItem {
                        Label("Discover", systemImage: "square.grid.2x2.fill")
                    }.tag(0)
            
                posts()
                    .onAppear(){
                        selectedIndex = 1
                    }
                    .tabItem {
                        Label("Friends", systemImage: "person.3.fill")
                    }.tag(1)
                
                Settings()
                    .onAppear(){
                        selectedIndex = 2
                    }
                    .tabItem {
                        Label("Account", systemImage: "person.crop.circle.fill")
                        
                    }.tag(2)
            }
            .accentColor(Color("Background"))
            
        }
    }
}

#Preview {
    NavigationBar(newTask: Tasks.MOCK_TASK[0])
}
