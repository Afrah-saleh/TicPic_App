//
//  Edit_task.swift
//  Tic
//
//  Created by Afrah Saleh on 10/05/1445 AH.
//

import SwiftUI

struct Edit_task: View {
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
                    Button {
                               } label: {
                                   Spacer()
                                   Text("UPDATE")
                                       .padding()
                                       .background(Color("orange2"))
                                       .cornerRadius(10)
                                       .foregroundColor(Color.white)
                                       
                               }
                               .listRowBackground(Color.clear)
                               .position(x:150, y:20)
                }
                
                
                .tint(Color("orange2"))
                .background(Color("Second_color"))
                .scrollContentBackground(.hidden)
                .navigationTitle("Edit Task")
               // .navigationBarTitleDisplayMode(.large)
      
                .navigationBarItems(trailing: Button {
                    //  showSheet.toggle()
                } label: {
                    Image(systemName: "trash.fill")
                        .foregroundColor(.orange)
                    
                })
             
                    
                }
            }
        }

