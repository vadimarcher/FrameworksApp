//
//  ContentView.swift
//  FrameworksApp
//
//  Created by Vadim Archer on 16.10.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()), 
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        
        
        NavigationView {
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        IconView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                    
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDiscriptionView ) {
                DiscriptionView(framework: viewModel.selectedFramework!, isShowingDiscriptionView: $viewModel.isShowingDiscriptionView)
            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}



struct IconView: View {

    
    let framework: Framework
   
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .aspectRatio(contentMode: .fit)
            
            
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
        .padding()
    }
}


struct BackgroundView: View {
    var body: some View {
        ContainerRelativeShape()
            .fill(Color.black.gradient)
            .ignoresSafeArea()
    }
}



