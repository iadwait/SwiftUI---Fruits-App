//
//  SettingsView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 28/06/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text("Hello, World!")
                }
                .navigationTitle("Settings")
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
                )
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
