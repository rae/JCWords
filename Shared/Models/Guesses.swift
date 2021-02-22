//
//  Guesses.swift
//  JCWords (iOS)
//
//  Created by Reid Ellis on 2021-02-21.
//

import Foundation
import Combine

enum LetterState: CaseIterable, Equatable {
    case empty
    case correct
    case misplaced
    case wrong
}

struct Letter: Equatable {
    var characterString: String
    var state: LetterState
}

typealias Word = [Letter]

extension Word {
    init(str: String) {
        self = Self.init(repeating: Letter(characterString: "", state: .empty), count: str.count)
    }
}

class Game: ObservableObject {
    @Published var rows: [Word]
    @Published var wordString: String
    
    init(_ str: String) {
        wordString = str
        var firstRow = Word(str: str)
        firstRow[0] = Letter(characterString: String(str.first ?? Character(" ")), state: .correct)
        rows = [firstRow]
    }
    
    func guess(letter: String, at index: Int) {
        let wordArray: [String] = Array(arrayLiteral: wordString)
        guard var row = rows.last, index < row.count, index < wordArray.count else { return }
        if wordArray[index] == letter {
            row[index].state = .correct
        }
    }
}
