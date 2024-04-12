//
//  ContentView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 08/04/24.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [FruitDataModel] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                        .listRowSeparator(.hidden, edges: .bottom)
                }
            }
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
