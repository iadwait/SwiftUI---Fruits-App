//
//  FruitHeaderView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 25/04/24.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: FruitDataModel
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                .padding(.vertical, 10)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height: 400)
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        })
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
