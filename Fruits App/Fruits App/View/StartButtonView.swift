//
//  StartButtonView.swift
//  Fruits App
//
//  Created by Adwait Barkale on 08/04/24.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button {
            print("Exit the Onboarding")
            isOnboarding = false
        } label: {
            HStack {
                Text("Start")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .tint(.white)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
                //.accentColor(.white) // Keep same color for Light or Dark Mode
        }

    }
}

#Preview {
    StartButtonView()
}
