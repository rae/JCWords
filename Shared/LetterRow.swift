//
//  LetterRow.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-17.
//

import SwiftUI

struct LetterRow: View {
    @Environment(\.horizontalSizeClass) var sizeClass: UserInterfaceSizeClass?
    var word: String
    var body: some View {
        let wordArray = Array(word)
        let wordCountFloat = CGFloat(wordArray.count)
        let ratio: CGFloat = (sizeClass == .compact) ? 1 : 2
        let size: CGFloat = ratio*310 / wordCountFloat
        HStack {
            ForEach(0..<wordArray.count) { index in
                let style = LetterStyle.allCases[index % LetterStyle.allCases.count]
                Letter(
                    letter: String(wordArray[index]),
                    style: style,
                    size: size
                )
                if index+1 < wordArray.count{
                    Spacer(minLength: 0)
                }
            }
        }
    }
}

struct LetterRow_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            VStack(alignment: .center, spacing: 0.0) {
                LetterRow(word: "TESTING")
                LetterRow(word: "THISISTOOLONG")
                LetterRow(word: "TESTING")
                LetterRow(word: "TESTING")
                LetterRow(word: "CAT")
            }
            .padding()
            .previewDevice("iPad (8th generation)")

            VStack(alignment: .center, spacing: 0.0) {
                LetterRow(word: "TESTING")
                LetterRow(word: "THISISTOOLONG")
                LetterRow(word: "TESTING")
                LetterRow(word: "TESTING")
                LetterRow(word: "CAT")
            }
            .padding()
            .previewDevice("iPhone SE (2nd generation)")
        }
    }
}
