//
//  MenuView.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-20.
//

import SwiftUI

// oh dear, navigationBarTitleDisplayMode is iOS-only?
struct MenuView: View {
    let margin: CGFloat = 200
    @State private var isPlaying = false
    @State private var showingScores = false
    @State private var showingSettings = false
    @State private var showingInfo = false
    var body: some View {
        NavigationView {
            VStack(spacing: 18) {
				#if os(iOS)
                NavigationLink(
                    destination: MockGameView()
                        .navigationBarTitleDisplayMode(.inline),
                    isActive: $isPlaying
                ) { EmptyView() }
                MenuItemView("Play") { self.isPlaying = true }
                NavigationLink(
                    destination: Text("Scores go here")
                        .navigationBarTitleDisplayMode(.inline),
                    isActive: $showingScores
                ) { EmptyView() }
                MenuItemView("Scores") { self.showingScores = true }
                NavigationLink(
                    destination: Text("Settings go here")
                        .navigationBarTitleDisplayMode(.inline),
                    isActive: $showingSettings
                ) { EmptyView() }
                MenuItemView("Settings") { self.showingSettings = true }
                NavigationLink(
                    destination: Text("Info goes here")
                        .navigationBarTitleDisplayMode(.inline),
                    isActive: $showingInfo
                ) { EmptyView() }
				#endif
                MenuItemView("Info") { self.showingInfo = true }
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
