//
//  OnboardingView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 08/04/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) {item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

#Preview {
    OnboardingView()
}
