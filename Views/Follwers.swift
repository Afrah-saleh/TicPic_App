//
//  Follwers.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//

import SwiftUI

//Complet
//add user data and fillter to search
//add remove button to fiends


struct Follwers: View {
    @State var searchItem = ""
    @State var selected = 1

    var body: some View {
       // NavigationStack {
            VStack() {
                Picker(selection: $selected, label: Text("Picker"), content:
                {
                    Text("Friends").tag(1)
                    Text("Invetations").tag(2)
                }).background(Color.clear)
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 360)
                .padding(10)
             
           
                    if selected == 1 {
                        Friends2()
                       
                    } else {
                        Invetations2()
                    }
                    
            }
        
            .navigationTitle("My Friends")
            .searchable(text: $searchItem, prompt: "Add Friends")
            .background(Color("Second_color"))
        }
   // }
}

#Preview {
    Follwers()
}

