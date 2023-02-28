//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by A Alabdullah on 20/02/2023.
//

import SwiftUI

@main
struct ChatAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        //hiding title bar...
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

//hiding textfieled foucs ring...

extension NSTextField{
    open override var focusRingType: NSFocusRingType{
        get{.none}
        set{}
    }
}
