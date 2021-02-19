//
//  ContentView.swift
//  Shared
//
//  Created by Reid Ellis on 2021-02-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LetterRow(word: "TESTING")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
