//
//  FrameworkListView.swift
//  Apple-Frameworks
//
//  Created by Furkan Bingöl on 3.12.2023.
//

import SwiftUI

#Preview {
    FrameworkListView()
}

struct FrameworkListView: View {
    
    private let data            = MockData.frameworks
    @StateObject var viewModel  = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            // List has already scrollView! Don't use scrollView again
            List {
                ForEach(data, id: \.id) { framework in
                    NavigationLink {
                        // destination
                        FrameworkDetailView(framework: framework,
                                            isShowingDetailView: $viewModel.isShowingDetailView, 
                                            isFromGridPage: $viewModel.isFromGridPage)
                    } label: {
                        FrameworkTitleViewHorizontal(framework: framework)
                    }
                }
            }
            .navigationTitle(" Frameworks")
        }
        .accentColor(Color(.label))
        .onAppear {
            viewModel.isFromGridPage = false
        }
    }
}
