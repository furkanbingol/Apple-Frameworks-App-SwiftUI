//
//  FrameworksRootView.swift
//  Apple-Frameworks
//
//  Created by Furkan Bingöl on 3.12.2023.
//

import SwiftUI

#Preview {
    FrameworksRootView()
}

// Basically, just TabView
struct FrameworksRootView: View {
    
    var body: some View {
        TabView {
            FrameworkGridView()
                .tabItem {
                    Image(systemName: "square.grid.3x3.fill")
                    Text("Grid")
                }
                
            FrameworkListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
        }
    }
    
}
