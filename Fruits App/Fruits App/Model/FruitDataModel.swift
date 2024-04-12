//
//  FruitDataModel.swift
//  Fruits App
//
//  Created by Adwait Barkale on 10/04/24.
//

import SwiftUI

struct FruitDataModel: Identifiable {
    
    var id = UUID()
    var title: String
    var headline: String
    let image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}
