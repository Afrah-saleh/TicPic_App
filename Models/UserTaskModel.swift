//
//  UserTaskModel.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 16/05/1445 AH.
//

import Foundation
import Firebase


struct Tasks: Identifiable {
    let id: String
    var TaskName: String
    var TaskDescription: String?
    let timestamp: Timestamp
    let imageUrl: String?
    let TaskStatus: Bool
}

extension Tasks {
    static var MOCK_TASK: [Tasks] = [
        .init(id:UUID().uuidString ,TaskName: "Meeting", TaskDescription: "meet with team members", timestamp: Timestamp(), imageUrl: nil, TaskStatus: false),
        
        .init(id:UUID().uuidString ,TaskName: "Meeting", TaskDescription: "meet with team members", timestamp: Timestamp(), imageUrl: "1" , TaskStatus: true),
        
        .init(id:UUID().uuidString ,TaskName: "Meeting", TaskDescription: "meet with team members", timestamp: Timestamp(), imageUrl: nil, TaskStatus: false),
        
    ]
}
