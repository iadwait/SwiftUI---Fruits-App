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
        Text(fruit.title)
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
