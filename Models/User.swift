//
//  User.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//

import Foundation

struct User : Identifiable , Codable {
    
    let id : String
    var userName : String
    var profileImage : String?
    var fullName : String?
    var bio : String?
    let email:String
}


extension User {
    
    static var USERS : [User] = [
        
        .init(id: NSUUID().uuidString, userName: "@Abdul3344", profileImage: "Profile",fullName: "Gawaher Ali",bio: "Full Stack Developer ",email: "Ss1123@example.com") ,
        .init(id: NSUUID().uuidString, userName: "@Abdul3344", profileImage: "Profile",fullName: "Gawaher Ali",bio: "Full Stack Developer ",email: "Ss1123@example.com") ,
        .init(id: NSUUID().uuidString, userName: "@Abdul3344", profileImage: "Profile",fullName: "Gawaher Ali",bio: "Full Stack Developer ",email: "Ss1123@example.com") ,
        .init(id: NSUUID().uuidString, userName: "@Abdul3344", profileImage: "Profile",fullName: "Gawaher Ali",bio: "Full Stack Developer ",email: "Ss1123@example.com") ,
        .init(id: NSUUID().uuidString, userName: "@Abdul3344", profileImage: "Profile",fullName: "Gawaher Ali",bio: "Full Stack Developer ",email: "Ss1123@example.com") ,
        .init(id: NSUUID().uuidString, userName: "@Abdul3344", profileImage: "Profile",fullName: "Gawaher Ali",bio: "Full Stack Developer ",email: "Ss1123@example.com")
    
    ]
    
    
}


