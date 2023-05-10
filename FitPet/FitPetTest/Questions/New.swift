//
//  New.swift
//  FitPet
//
//  Created by 백대홍 on 2023/05/10.
//

import SwiftUI

struct New: View {
    var body: some View {
        VStack {
            ZStack {
                Color.MainColor
                
            }.frame(width: .infinity, height: 100)
                .ignoresSafeArea()
            Spacer()
        }
    }
}

struct New_Previews: PreviewProvider {
    static var previews: some View {
        New()
    }
}
