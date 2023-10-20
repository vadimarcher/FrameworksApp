//
//  FrameworkIconViewModel.swift
//  FrameworksApp
//
//  Created by Vadim Archer on 17.10.2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDiscriptionView = true
        }
    }
    
   @Published var isShowingDiscriptionView = false
    
}
