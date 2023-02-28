//
//  HomeViewModel.swift
//  ChatApp
//
//  Created by A Alabdullah on 20/02/2023.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    
    @Published var selectedTab = "All Chats"
    
    @Published var msgs : [RecentMessage] = recentMsgs
    
    //selected recent tab...
    @Published var selectedrecentMsg : String? = recentMsgs.first?.id
    
    //Search
    @Published var search = ""
    
    //Messages...
    @Published var message = ""
    
    //expanded view
    @Published var isExpanded = false
    
    //picked expanded
    @Published var pickedTap = "Media"
    
    //send message
    func sendMessage (user: RecentMessage) {
        if message != ""{
            let index = msgs.firstIndex { (currentUser) -> Bool in
                return currentUser.id == user.id
            } ?? -1
            if index != -1{
                msgs[index].allMsgs.append(Message(message: message , myMessage: true))
                message = ""
            }
            
        }
        
    }
}
