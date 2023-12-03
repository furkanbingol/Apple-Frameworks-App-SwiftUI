//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Furkan Bingöl on 3.12.2023.
//

import SwiftUI

#Preview {
    AFButton(title: "Test Title")
}

struct AFButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red.gradient)
            .foregroundStyle(.white.gradient)
            .cornerRadius(10)
    }
}
