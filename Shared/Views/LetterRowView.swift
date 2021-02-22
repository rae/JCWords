//
//  LetterRowView.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-17.
//

import SwiftUI

struct LetterRowView: View {
    /// Use the sizeclass to decide on the size ratio
    @Environment(\.horizontalSizeClass) var sizeClass: UserInterfaceSizeClass?
    var word: String
    var body: some View {
        let wordArray = Array(word)
        let wordCountFloat = CGFloat(wordArray.count)
        /// The sizde ratio is a workaround for not having superView.bounds, really
        let ratio: CGFloat = (sizeClass == .compact) ? 0.5 : 1.5
        let size: CGFloat = ratio*310 / wordCountFloat
        HStack {
            ForEach(0..<wordArray.count) { index in
                let style = LetterStyle.allCases[index % LetterStyle.allCases.count]
                LetterView(
                    letter: String(wordArray[index]),
                    style: style,
                    size: size
                )
                .padding(ratio*3)
            }
        }
    }
}

struct LetterRow_Preview: PreviewProvider {
    static var previews: some View { 
        SomePreviews {
            VStack(alignment: .center, spacing: 0.0) {
                LetterRowView(word: "THISISTOOLONG")
                LetterRowView(word: "STRANGEST")
                LetterRowView(word: "STRESSED")
                LetterRowView(word: "TESTING")
                LetterRowView(word: "HEARTH")
                LetterRowView(word: "HEART")
                LetterRowView(word: "DOOR")
                LetterRowView(word: "CAT")
                LetterRowView(word: "OX")
            }
        }
    }
}
