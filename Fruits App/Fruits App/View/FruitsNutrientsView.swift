//
//  FruitsNutrientsView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 17/06/24.
//

import SwiftUI

struct FruitsNutrientsView: View {
    
    var fruit: FruitDataModel
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional Value per 100 gm") {
                ForEach(0..<nutrients.count,  id: \.self) {item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                                .frame(width: 100, alignment: .leading)
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .fontWeight(.bold)
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            //.frame(width: 150, alignment: .leading)
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview {
    FruitsNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
