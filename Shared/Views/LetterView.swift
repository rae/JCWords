//
//  LetterView.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-05.
//

import SwiftUI

struct LetterView: View {
    var letter: String
    var style: LetterStyle = .correct
    var size: CGFloat = 16
    var color: Color = .primary
    var stroke: CGFloat { size/10.0 }
    var body: some View {
        ZStack {
            if style.misplaced {
                let radius = size*1.2
                Ellipse()
                    .frame(width: radius, height: radius*1.1)
                    .foregroundColor(style.circleColor)
            }
            if style.isEmpty {
                RoundedRectangle(cornerRadius: size/6)
                    .stroke(
                        style.strokeColor,
                        style: StrokeStyle(
                            lineWidth: stroke,
                            lineCap: .round,
                            lineJoin: .miter,
                            dash: [size/6, size/6]
                        )
                    )
                    .frame(width: size, height: size)
            } else {
                RoundedRectangle(cornerRadius: size/6)
                    .stroke(style.strokeColor, lineWidth: stroke)
                    .frame(width: size, height: size)
            }
            Text(letter)
                .fontWeight(.bold)
                .font(.custom("Monaco", fixedSize: size))
                .foregroundColor(style.foreground)
                .padding(size/4.0)
        }
    }
}

struct Letter_Preview: PreviewProvider {
    static var previews: some View {
        let scale: CGFloat = 40
        SomePreviews {
            HStack {
                LetterView(letter: "i", size: scale)
                LetterView(letter: "N", style: .misplaced, size: scale)
                LetterView(letter: "M", style: .empty, size: scale)
                LetterView(letter: "i", size: scale)
                LetterView(letter: "M", size: scale)
            }
        }
    }
}
