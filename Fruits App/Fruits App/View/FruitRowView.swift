//
//  FruitRowView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 12/04/24.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: FruitDataModel
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original) // To Avoid any system color from applying
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
}
