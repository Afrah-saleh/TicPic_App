//
//  Calender.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 12/05/1445 AH.
//

import SwiftUI


struct Calender: View {
    @State var showSheetAdd: Bool = false
    @State var showSheetEdit: Bool = false
    @State private var date = Date.now
    var body: some View {
      //  NavigationView {
            ScrollView{
                
                VStack {
                    DatePicker("Select a date", selection: $date, displayedComponents: .date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .frame(maxHeight: 400)
                        .tint(Color("orange2"))
                        .offset(x:0, y:20)
                    Text("Today's Tasks:")
                        .font(.headline)
                        .offset(x:-120, y:30)
                    
                }
            }
            .background(Color("Second_color"))
            .navigationBarTitle(Text("Calender"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {
                showSheetAdd = true
            }) {
                Image(systemName: "plus")
                    .foregroundColor(Color("Background"))
            })
            .sheet(isPresented: $showSheetAdd) {
                Add_Task()
                    .presentationDetents([.fraction(0.7)])
                    .presentationDragIndicator(.visible)
            }
        
        }
   //}
}
        
        
    
#Preview {
    Calender()
}

