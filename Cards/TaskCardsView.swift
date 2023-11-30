//
//  TaskCardsView.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 16/05/1445 AH.
//

import SwiftUI

struct TaskCardsView: View {
    //create instance of type card()
    let newTask: Tasks
    //create an array if needed to iterate through the tas details
    
    var body: some View {
//        ForEach(0...3){ i in
        
        VStack{     
            //Card(newTask: Tasks.MOCK_TASK[0])
            Text("test")
        }
    }
    
}
#Preview {
    TaskCardsView(newTask: Tasks.MOCK_TASK[0])
}
