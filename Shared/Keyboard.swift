//
//  Keyboard.swift
//  JCWords
//
//  Created by Reid Ellis on 2021-02-21.
//
import SwiftUI

#if os(iOS)
import UIKit

struct KeyEventHandling: UIViewRepresentable {
    class KeyView: UIView, UIKeyInput {
        var hasText: Bool { true }
        func deleteBackward() { }
        override var canBecomeFirstResponder: Bool { true }

        func insertText(_ text: String) {
            print(">> text \(text)")
        }
        
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = KeyView()
        DispatchQueue.main.async { view.becomeFirstResponder() }
        return view
    }
    
    func updateUIView(_ nsView: UIView, context: Context) { }
}

#elseif os(macOS)
import AppKit

struct KeyEventHandling: NSViewRepresentable {
    class KeyView: NSView {
        override var acceptsFirstResponder: Bool { true }
        override func keyDown(with event: NSEvent) {
            super.keyDown(with: event)
            print(">> key \(event.charactersIgnoringModifiers ?? "")")
        }
    }

    func makeNSView(context: Context) -> NSView {
        let view = KeyView()
        DispatchQueue.main.async { // wait till next event cycle
            view.window?.makeFirstResponder(view)
        }
        return view
    }

    func updateNSView(_ nsView: NSView, context: Context) {
    }
}
#endif

struct TestKeyboardEventHandling: View {
    var body: some View {
        Text("Hello, World!")
            .background(KeyEventHandling())
    }
}
