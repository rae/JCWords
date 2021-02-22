//
//  MockGameView.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-20.
//

import SwiftUI

struct MockGameView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            LetterRowView(word: "STRANGEST")
            LetterRowView(word: "STRESSED")
            LetterRowView(word: "TESTING")
            LetterRowView(word: "HEARTH")
            LetterRowView(word: "HEART")
            LetterRowView(word: "DOOR")
            LetterRowView(word: "CAT")
        }
    }
}
