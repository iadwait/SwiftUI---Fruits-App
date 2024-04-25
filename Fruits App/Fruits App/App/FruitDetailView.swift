//
//  FruitDetailView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 18/04/24.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: FruitDataModel
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center, spacing: 20, content: {
                    VStack(alignment: .leading, spacing: 20, content: {
                        
                        FruitHeaderView(fruit: fruit)
                            .padding(.horizontal, -20)
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                    })
                    .frame(maxWidth: 640, alignment: .center)
                    .padding(.horizontal, 20)
                })
                //.navigationTitle(fruit.title)
                //.navigationBarTitleDisplayMode(.inline)
                //.navigationBarHidden(true)
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
