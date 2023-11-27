//
//  TaskCard.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 12/05/1445 AH.
//

import SwiftUI

struct TaskCard: View {
    @State var animate = false
    var animation: Animation = .spring(response: 0.3,dampingFraction: 0.5)
    @State var showSheetEdit: Bool = false
    
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        

//        ScrollView {
        ForEach(0..<5) { _ in
            
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .foregroundColor(colorScheme == .dark ? Color("TaskColor") : Color.white)
//                .foregroundColor(Color("TaskColor"))
               // .foregroundStyle(Color.white : Color.gray)
                .frame(maxWidth: .infinity)
                .frame(height: animate ? 150 : 100)
//                .shadow(color: .gray.opacity(0.8), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 8)
                .padding()
            
            
            
                .onTapGesture {
                    withAnimation(animation) {
                        animate.toggle()
                    }
                }
            
                .overlay{
                    
                    VStack(alignment:.leading){
                        
                        HStack{
                            Text("Meeting")
                                .bold()
                                .font(.system(size: 17))
                            
                            //                             لما ياخذ صوره للتاسك
                                .strikethrough()
                            
                            
                            //                            زر تعديل التاسك
                            Button {
                                showSheetEdit = true
                            } label: {
                                Image(systemName: "pencil")
                                    .foregroundColor(Color("orange2"))
                            }
                            .sheet(isPresented: $showSheetEdit) {
                                Edit_task()
                                    .presentationDetents([.fraction(0.7)])
                                    .presentationDragIndicator(.visible)
                            }
                            
                            .padding(.leading, 220.0)
                            
                            
                            
                            
                        }
                        Text("About our App TickPic")
                            .font(.system(size: 15))
                            .foregroundStyle(.gray)
                        
                        
                        if animate {
                            Button("Take a pic") {
                                print("Button pressed!")
                                
                            }
                            
                            //                                .frame(maxWidth: 300)
                            .padding()
                            .controlSize(.small)
                            .background(Color("orange2"))
                            .clipShape(Capsule())
                            .foregroundStyle(.white)
                            
                            
                        }
                        
                        
                    }
                }
        }
                
       
            
            
//        }
        
        
        
        
        
        
    }
}

#Preview {
    TaskCard()
}
