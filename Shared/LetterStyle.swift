//
//  LetterStyle.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-19.
//

import SwiftUI

enum LetterStyle: CaseIterable {
    case empty
    case correct
    case misplaced
    case wrong
    
    var foreground: Color {
        switch self {
        case .empty:
            return .clear
        case .correct:
            return .primary
        case .misplaced:
            return .accentColor
        case .wrong:
            return .gray
        }
    }
    var misplaced: Bool { self == .misplaced }
    var isEmpty: Bool { self == .empty }
    var circleColor: Color { .secondary }
}
