//
//  FrameworkTitleViewHorizontal.swift
//  Apple-Frameworks
//
//  Created by Furkan Bingöl on 3.12.2023.
//

import SwiftUI

#Preview {
    FrameworkTitleViewHorizontal(framework: MockData.sampleFramework)
}

struct FrameworkTitleViewHorizontal: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)             // supports Dynamic Type!
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)   // Text, ekrana sığmazsa maksimum %60'a kadar font'un size'ını düşür
                .padding(.leading, 5)
        }
        .padding(.leading, -5)
    }
}


