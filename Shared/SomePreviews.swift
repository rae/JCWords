//
//  SomePreviews.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-20.
//

import SwiftUI

struct SomePreviews<Content: View>: View {
    let content: Content

    init(_ newContent: () -> Content) {
        content = newContent()
    }

    var body: some View {
        Group {
            content
                .previewLayout(.sizeThatFits)
            content
            content
                .preferredColorScheme(.dark)
                .previewDisplayName("Dark")
            content
                .previewDevice("iPad Pro (12.9-inch) (4th generation)")
        }
    }
}
