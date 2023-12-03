//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Furkan Bingöl on 3.12.2023.
//

import SwiftUI

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, 
                        isShowingDetailView: .constant(false),
                        isFromGridPage: .constant(false))
}

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @Binding var isFromGridPage: Bool
    @State private var isShowingSafariView = false

    
    var body: some View {
        VStack {
            
            if isFromGridPage {
                XButtonView(isShowingDetailView: $isShowingDetailView)
                Spacer()
                FrameworkTitleViewVertical(framework: framework)
            } 
            else {
                FrameworkTitleViewHorizontal(framework: framework)
            }
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .padding(.bottom, 20)
            
        //  Link(destination: URL(string: framework.urlString)!, label: {
        //      AFButton(title: "Learn More")
        //  })
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    //  .sheet(isPresented: $isShowingSafariView, content: {
    //      SafariView(url: URL(string: framework.urlString)!)
    //  })
    }
}
