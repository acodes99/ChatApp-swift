//
//  RecentMessage.swift
//  ChatApp
//
//  Created by A Alabdullah on 22/02/2023.
//

import SwiftUI

//Recent model...

struct RecentMessage : Identifiable {
    
    var id = UUID().uuidString
    var lastMsg : String
    var lastMsgTime : String
    var pendingMsg : String
    var userName : String
    var userImage : String
    var allMsgs : [Message]
}

var recentMsgs : [RecentMessage] = [
    
    RecentMessage( lastMsg: "Apple Tech", lastMsgTime: "15:00", pendingMsg: "3", userName: "Abdulrahman", userImage: "p0", allMsgs: Eachmsg.shuffled()),
    RecentMessage( lastMsg: "What are you doing?!", lastMsgTime: "21:23", pendingMsg: "2", userName: "Abdulaziz", userImage: "p1", allMsgs: Eachmsg.shuffled()),
    RecentMessage( lastMsg: "Hello", lastMsgTime: "20:00", pendingMsg: "1", userName: "Yazeed", userImage: "p2", allMsgs: Eachmsg.shuffled())
    
]
