//
//  ContentView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 08/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    var fruits: [FruitDataModel] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                            .listRowSeparator(.hidden, edges: .bottom)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })
                                        .sheet(isPresented: $isShowingSettings, content: {
                                            SettingsView()
                                        })
            )
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
