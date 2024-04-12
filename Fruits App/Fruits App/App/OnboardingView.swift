//
//  OnboardingView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 08/04/24.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [FruitDataModel] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) {item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

#Preview {
    OnboardingView()
}
