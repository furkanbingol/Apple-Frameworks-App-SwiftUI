//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Furkan Bingöl on 2.12.2023.
//

import SwiftUI

#Preview {
    FrameworkGridView()
}

struct FrameworkGridView: View {
    
    private let data            = MockData.frameworks
    @StateObject var viewModel  = FrameworkGridViewModel()
    
    // 3 columns for one row
    private let columns: [GridItem] = [GridItem(.flexible()),
                                       GridItem(.flexible()),
                                       GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(data, id: \.id) { framework in
                        FrameworkTitleViewVertical(framework: framework)
                            .onTapGesture {
                                viewModel.isFromGridPage = true
                                viewModel.selectedFramework = framework
                            }
                    }
                })
            }
            .navigationTitle(" Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView, 
                                    isFromGridPage: $viewModel.isFromGridPage)
            }
        }
    }
}


/*
 | iOS16+ , use NavigationStack instead of NavigationView |
 
    if #available(iOS 16.0, *) {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(data, id: \.id) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleViewVertical(framework: framework)
                        }
                    }
                })
            }
            .navigationTitle(" Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework, isFromGridPage: $viewModel.isFromGridPage)
            }
        }
    }
*/
