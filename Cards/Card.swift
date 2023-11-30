//
//  Card.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 12/05/1445 AH.
//

import SwiftUI

struct Card: View {
    @State var animate = false
    var animation: Animation = .spring(response: 0.3,dampingFraction: 0.5)
    @State var showSheetEdit: Bool = false
    let newTask: Tasks
    
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {

            //change the parameter in the for loop to fetch from the database
                
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .foregroundColor(colorScheme == .dark ? Color("TaskColor") : Color.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: animate ? 150 : 100)
                    .padding(.leading)
                    .padding(.trailing)
                    .overlay{
                
                VStack(alignment:.leading){
                    HStack{
                        //change to task title
                        Text(newTask.TaskName)
                            .bold()
                            .font(.system(size: 17))
                            //if task done , strike through
                            .strikethrough()
                        
                        //Edit task
                        Button {
                            showSheetEdit = true
                        } label: {
                            Image(systemName: "pencil")
                                .foregroundColor(Color("orange2"))
                                .frame(width:30,height: 20)
                        }
                        .sheet(isPresented: $showSheetEdit) {
                            Edit_task()
                                .presentationDetents([.fraction(0.7)])
                                .presentationDragIndicator(.visible)
                        }
                        
                        .padding(.leading, 220.0)
                         
                    }
                    //Change to the task discription
                    if let task = newTask.TaskDescription {
                        Text(task)
                            .font(.system(size: 15))
                            .foregroundStyle(.gray)
                        .onTapGesture {
                            withAnimation(animation) {
                                animate.toggle()
                            }
                        }
                    
                    }
                   
                if animate {
                    NavigationLink(destination:CamiraView()){
                        HStack {
                        label:do {
                            Label("Done", systemImage: "person.crop.circle.fill.badge.plus")
                                .frame(width:70 , height: 5)
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.orange2)
                                .cornerRadius(10)
                        }//end of label
                    }//end of HStack
                }//end of CameraView
            }//end of if-statement
                     
                        }
                        
                        
                    }
            }
        
        
    }



#Preview {
    Card(newTask: Tasks.MOCK_TASK[0])
}
