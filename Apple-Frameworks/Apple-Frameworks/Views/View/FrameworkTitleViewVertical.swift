//
//  FrameworkTitleViewVertical.swift
//  Apple-Frameworks
//
//  Created by Furkan Bingöl on 3.12.2023.
//

import SwiftUI

#Preview {
    FrameworkTitleViewVertical(framework: MockData.sampleFramework)
}

struct FrameworkTitleViewVertical: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)             // supports Dynamic Type!
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)   // Text, ekrana sığmazsa maksimum %60'a kadar font'un size'ını düşür
        }
        .padding()
    }
}
