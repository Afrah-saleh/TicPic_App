//
//  Add_Task.swift
//  Tic
//
//  Created by Afrah Saleh on 10/05/1445 AH.
//

import SwiftUI

struct Add_Task: View {

        // MARK: Task Properties
        @State var taskTitle: String = ""
        @State var taskDescription: String = ""
        @State var taskDate: Date = Date()

        var body: some View {
            NavigationView {
                Form {
                    Section {
                        
                        TextField("Math Home work", text: $taskTitle)
                        
                    } header: {
                        Text("Task Title")
                    }
                    .listRowBackground(Color("Text_field_coloe"))
                    
                    HStack{
                        Section {
                            DatePicker("", selection: $taskDate)
                                .labelsHidden()
                            
                            
                        } header: {
                            Text("Task Date")
                        }
                        
                    }.listRowBackground(Color.clear)
                    
                    Section {
                        TextField("Chapter 2", text: $taskDescription)
                            .padding(.bottom,50)
                          
                    } header: {
                        Text("Task Description")
                    }
                    .listRowBackground(Color("Text_field_coloe"))
                }
                
                .tint(Color("orange2"))
                .background(Color("Second_color"))
                .scrollContentBackground(.hidden)
                .navigationTitle("Add New Task")
               // .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(trailing: Button(action: {
                           }) {
                               Text("Save").bold()
                               
                                   .foregroundColor(Color("orange2"))
                       })
                
                
             
                    
                }
            }
        }
