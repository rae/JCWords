//
//  MenuItemView.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-20.
//

import SwiftUI

struct MenuItemView: View {
    let title: String
    let action: () -> Void

    init(_ title: String, _ action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    var body: some View {
        Button(title, action: action)
            .buttonStyle(OutlineButtonStyle())
    }
}
