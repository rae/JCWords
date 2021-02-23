//
//  OutlineButtonStyle.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-20.
//

import SwiftUI

struct OutlineButtonStyle: ButtonStyle {
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var sizeClass: UserInterfaceSizeClass?
    #endif
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(configuration.isPressed ? .gray : .accentColor)
            .font(.title)
            .padding()
            .background(
                RoundedRectangle(
                    cornerRadius: 8,
                    style: .continuous
                ).stroke(Color.accentColor, lineWidth: 3)
        )
    }
}
