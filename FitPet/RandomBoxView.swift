//
//  RandomBoxView.swift
//  FitPet
//
//  Created by 백대홍 on 2023/06/08.
//

import SwiftUI

struct RandomBoxView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.ButtonColor)
                .frame(width: 300, height: 300)
                .padding(.all)
            Image(systemName: "questionmark")
                .resizable()
                .foregroundColor(.black)
                .frame(width: 50, height: 50)
        }
    }
}

struct RandomBoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomBoxView()
    }
}
