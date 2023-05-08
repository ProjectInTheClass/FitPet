//
//  ProgressBar.swift
//  FitPet
//
//  Created by 백대홍 on 2023/03/04.
//

import SwiftUI

struct ProgressBar: View {
    let progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Capsule()
                .frame(height: 8)
                .foregroundColor(Color.gray.opacity(0.3))
            Capsule()
                .frame(width: progress*(3.6), height: 8)
                .foregroundColor(Color(red: 250 / 255, green: 223 / 255, blue: 157 / 255))
        }.padding()
            .animation(.linear(duration: 0.5))
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}
