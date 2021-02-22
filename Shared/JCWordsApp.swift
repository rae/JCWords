//
//  JCWordsApp.swift
//  Shared
//
//  Created by Reid Ellis on 2021-02-05.
//

import SwiftUI
import GameController

@main
struct JCWordsApp: App {
    var keyboard = Keyboard()
    var body: some Scene {
        WindowGroup {
            MenuView()
        }
    }
}
