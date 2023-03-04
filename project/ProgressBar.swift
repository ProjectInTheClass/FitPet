//
//  ProgressBar.swift
//  project
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
                .foregroundColor(Color.blue)
        }.padding()
        .animation(.linear(duration: 0.5))
    }
}
struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}
