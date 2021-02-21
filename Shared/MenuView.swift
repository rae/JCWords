//
//  MenuView.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-20.
//

import SwiftUI

struct OutlineButton: ButtonStyle {
    @Environment(\.horizontalSizeClass) var sizeClass: UserInterfaceSizeClass?
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(configuration.isPressed ? .gray : .accentColor)
            .font(.title)
            .padding()
            .background(
                RoundedRectangle(
                    cornerRadius: 8,
                    style: .continuous
                ).stroke(Color.accentColor, lineWidth: 3)
        )
    }
}

struct MenuView: View {
    let margin: CGFloat = 200
    @State private var isPlaying = false
    @State private var showingScores = false
    @State private var showingSettings = false
    @State private var showingInfo = false
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                NavigationLink(
                    destination: LetterRow(word: "SPECIAL"),
                    isActive: $isPlaying
                ) { EmptyView() }
                Button("Play") { self.isPlaying = true }
                Button("Scores") { self.showingScores = true }
                Button("Settings") { self.showingSettings = true }
                Button("Info") { self.showingInfo = true }
                Spacer()
                Text("JCWords 0.0\n2021-02-20")
                    .font(.system(.footnote))
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        SomePreviews {
            MenuView()
        }.buttonStyle(OutlineButton())
    }
}
