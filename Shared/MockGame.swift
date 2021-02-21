//
//  MockGame.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-20.
//

import SwiftUI

struct MockGame: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            LetterRow(word: "STRANGEST")
            LetterRow(word: "STRESSED")
            LetterRow(word: "TESTING")
            LetterRow(word: "HEARTH")
            LetterRow(word: "HEART")
            LetterRow(word: "DOOR")
            LetterRow(word: "CAT")
        }
    }
}
