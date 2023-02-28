//
//  Message.swift
//  ChatApp
//
//  Created by A Alabdullah on 22/02/2023.
//

import SwiftUI

// message model
struct Message : Identifiable,Equatable{
    
    var id = UUID().uuidString
    var message : String
    var myMessage : Bool
}

var Eachmsg = [
    
    
    Message(message: "Hello", myMessage: false),
    Message(message: "what are you doing?!", myMessage: false)


]
