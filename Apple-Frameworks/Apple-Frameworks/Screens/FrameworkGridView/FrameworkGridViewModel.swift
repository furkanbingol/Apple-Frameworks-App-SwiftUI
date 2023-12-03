//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Furkan Bingöl on 3.12.2023.
//

import SwiftUI

// Classes are reference types, structs are value types. We need our "viewModel" to be a reference type so it preserves it's state as it updates and changes.
// The ObservableObject protocol is a class protocol, so anything conforming to ObservableObject must be a class as well.
// ObservableObject --> Because of broadcasting!

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    var isFromGridPage = true
}
