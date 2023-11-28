//
//  Home.swift
//  Tic
//
//  Created by Afrah Saleh on 10/05/1445 AH.
//

import SwiftUI

struct SwiftUIView: View {
    @StateObject var taskModel: TaskViewModel = TaskViewModel()
    @Namespace var animation
    @State var showSheetAdd: Bool = false
    @State var showSheetEdit: Bool = false
    
    var body: some View {
       
            
            NavigationView {
                ZStack{
                VStack{
                    ScrollView(.vertical, showsIndicators: false) {
                        NavigationLink(destination: Calender()) {
                            Text("See All")
                            
                        }
                        .padding(.top,10)
                        .padding(.leading,300)
                        .font(.headline)
                        //.font(.caption)
                        .foregroundColor(.orange2)
                        
                        // MARK: Lazy Stack With Pinned Header
                        LazyVStack(spacing: 15, pinnedViews: [.sectionHeaders]) {
                            Section {
                                // MARK: Current Week View
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 10) {
                                        ForEach(taskModel.currentWeek, id: \.self) { day in
                                            VStack(spacing: 10) {
                                                Text(taskModel.extractDate(date: day, format: "dd"))
                                                    .font(.system(size: 14))
                                                    .fontWeight(.semibold)
                                                Text(taskModel.extractDate(date: day, format: "EEE")) //EEE will return day as Week Abbreviation
                                                    .font(.system(size: 14))
                                                
                                            }
                                            // MARK: Foreground Style
                                            .foregroundStyle(taskModel.isToday(date: day) ? Color.white : Color.gray)
                                            .foregroundColor(taskModel.isToday(date: day) ? .white : .white)
                                  
                                            // MARK: Capsule Shape
                                            .frame(width: 45, height: 90)
                                            .background(
                                                ZStack {
                                                    // MARK: Matched Geometry Effect
                                                    if taskModel.isToday(date: day) {
                                                        Capsule()
                                                            .fill(Color("Background"))
                                                            .matchedGeometryEffect(id: "CURRENTDAY", in: animation)
                                                    }
                                                }
                                            )
                                            .contentShape(Capsule())
                                            .onTapGesture {
                                                // Updating Current Day
                                                withAnimation {
                                                    taskModel.currentDay = day
                                                }
                                            }
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                                //Add New Task sheet
                                Divider()
                                    .frame(width: 380)
                                   // .overlay(Color("Background"))
                                   // .frame(height: 2)
                                Button("Add task"){
                                    showSheetAdd.toggle()
                                    
                                } .foregroundColor(Color("orange2"))
                                    .padding(.leading,290)
                                    .font(.headline)
                                    .sheet(isPresented: $showSheetAdd) {
                                        Add_Task()
                                            .presentationDetents([.fraction(0.7)])
                                            .presentationDragIndicator(.visible)
                                        
                                    }
                                TaskCard()
                          
                                
                            }
                        }
                        
                    }
                }
            }
                .background(Color("Second_color"))
                .navigationBarTitle(Text("Discover"))
                .navigationBarTitleDisplayMode(.large)
                
            }
    }
}
#Preview {
    SwiftUIView()
}
