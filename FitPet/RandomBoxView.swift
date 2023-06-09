//
//  RandomBoxView.swift
//  FitPet
//
//  Created by 백대홍 on 2023/06/08.
//

import SwiftUI

struct RandomBoxView: View {
    @State private var rotationAngle: Double = 0
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
                .rotation3DEffect(Angle(degrees: rotationAngle), axis: (x: 0.0, y: 1.0, z: 0.0))
                .onAppear() {
                    runRotationAnimation()
                }
        }
    }
    func runRotationAnimation() {
        withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
            rotationAngle = 360
        }
    }
}

struct RandomBoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomBoxView()
    }
}
