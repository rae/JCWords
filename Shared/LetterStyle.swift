//
//  LetterStyle.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-19.
//

import SwiftUI

enum LetterStyle: CaseIterable {
    case empty
    case normal
    case circled
    case wrong
    
    var foreground: Color {
        switch self {
        case .empty:
            return .clear
        case .normal:
            return .black
        case .circled:
            return .red
        case .wrong:
            return .red
        }
    }
    var circled: Bool { self == .circled }
    var isEmpty: Bool { self == .empty }
    var circleColor: Color { .black }
}
