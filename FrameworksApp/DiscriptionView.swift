//
//  DiscriptionView.swift
//  FrameworksApp
//
//  Created by Vadim Archer on 16.10.2023.
//

import SwiftUI

struct DiscriptionView: View {
    
    var framework: Framework
    @Binding var isShowingDiscriptionView: Bool
    
    var body: some View {
        
        VStack {
            
            HStack {
                Button(action: {
                    isShowingDiscriptionView = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                        
                })
                Spacer()
            }
            .padding()
            
            Spacer()
            
            IconView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {}, label: {
                FButton(title: "Learn More")
            })
        }
    }
}

#Preview {
    DiscriptionView(framework: MockData.sampleFramework, isShowingDiscriptionView: .constant(false))
        .preferredColorScheme(.dark)
}
