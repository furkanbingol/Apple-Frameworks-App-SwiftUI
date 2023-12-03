//
//  XButtonView.swift
//  Apple-Frameworks
//
//  Created by Furkan Bingöl on 3.12.2023.
//

import SwiftUI

#Preview {
    XButtonView(isShowingDetailView: .constant(false))
}

struct XButtonView: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                isShowingDetailView = false
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))       // .label Color -> black in light mode, white in dark mode
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
        }
        .padding()
    }
}


