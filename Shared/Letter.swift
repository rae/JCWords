//
//  Letter.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-05.
//

import SwiftUI

struct Letter: View {
    enum Style: CaseIterable {
        case normal
        case circled
        case wrong
    }
    var letter: String
    var style: Style = .normal
    var size: CGFloat = 16
    var color: Color = .black
    var stroke: CGFloat { size/10.0 }
    var strokeColor: Color = .gray
    var body: some View {
        ZStack {
            if style == .circled {
                Circle()
                    .frame(width: size*0.9, height: size)
                    .foregroundColor(.red)
            }
            RoundedRectangle(cornerRadius: size/6)
                .stroke(strokeColor, lineWidth: stroke)
                .frame(width: size, height: size)
            Text(letter)
            .fontWeight(.bold)
            .font(.custom("Monaco", fixedSize: size))
            .foregroundColor(color)
                .padding(size/8.0)

//                .overlay(
//                    RoundedRectangle(cornerRadius: size/6)
//                    .stroke(strokeColor, lineWidth: stroke)
//                )
        }
    }
}


struct Letter_Preview: PreviewProvider {
    static var previews: some View {
        let scale: CGFloat = 40
        HStack {
            Letter(letter: "i", size: scale)
            Letter(letter: "N", style: .circled, size: scale)
            Letter(letter: "M", size: scale)
            Letter(letter: "i", size: scale)
            Letter(letter: "N", size: scale)
            Letter(letter: "M", size: scale)
        }
    }
}
