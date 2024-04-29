//
//  SourceLinkView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 29/04/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikepedia", destination: URL(string: "https://www.wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
        //.padding()
    }
}

#Preview {
    SourceLinkView()
}
