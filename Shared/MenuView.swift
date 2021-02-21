//
//  MenuView.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-20.
//

import SwiftUI

struct MenuView: View {
    let margin: CGFloat = 200
    @State private var isPlaying = false
    @State private var showingScores = false
    @State private var showingSettings = false
    @State private var showingInfo = false
    var body: some View {
        NavigationView {
            VStack(spacing: 18) {
                NavigationLink(
                    destination: MockGame()
                        .navigationBarTitleDisplayMode(.inline),
                    isActive: $isPlaying
                ) { EmptyView() }
                MenuItem("Play") { self.isPlaying = true }
                NavigationLink(
                    destination: Text("Scores go here")
                        .navigationBarTitleDisplayMode(.inline),
                    isActive: $showingScores
                ) { EmptyView() }
                MenuItem("Scores") { self.showingScores = true }
                NavigationLink(
                    destination: Text("Settings go here")
                        .navigationBarTitleDisplayMode(.inline),
                    isActive: $showingSettings
                ) { EmptyView() }
                MenuItem("Settings") { self.showingSettings = true }
                NavigationLink(
                    destination: Text("Info goes here")
                        .navigationBarTitleDisplayMode(.inline),
                    isActive: $showingInfo
                ) { EmptyView() }
                MenuItem("Info") { self.showingInfo = true }
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
        }
    }
}
