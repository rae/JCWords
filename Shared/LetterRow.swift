//
//  LetterRow.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-17.
//

import SwiftUI

struct LetterRow: View {
    var word: String
    var body: some View {
        let wordArray = Array(word)
        let screenSize = UIScreen.main.bounds.size
            let size = screenSize.width / CGFloat(wordArray.count+1)
            HStack(alignment: .center, spacing: 4) {
                ForEach(0..<wordArray.count) { index in
                    let style: Letter.Style = Letter.Style.allCases.randomElement() ?? .normal
                    Letter(letter: String(wordArray[index]), style: style, size: size)
                }
            }
    }
}

struct LetterRow_Preview: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .center, spacing: 0) {
            LetterRow(word: "TESTING")
            LetterRow(word: "technologistics")
            LetterRow(word: "TESTING")
            LetterRow(word: "TESTING")
        }
    }
}
