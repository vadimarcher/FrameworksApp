//
//  FButton.swift
//  FrameworksApp
//
//  Created by Vadim Archer on 17.10.2023.
//

import SwiftUI

struct FButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
    .font(.title2)
    .fontWeight(.semibold)
    .frame(width: 280, height: 50)
    .background(Color.red.gradient)
    .foregroundColor(.white)
    .cornerRadius(10)
    }
}

#Preview {
    FButton(title: "Test Title")
}
