//
//  Onboarding_intro.swift
//  FitPet
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct Onboarding_intro: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea([.all])
            VStack(alignment: .center) {
                Spacer(minLength: 150)
                Image("Applogo")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                Spacer(minLength: 30)
                Text("나에게 잘 맞는 반려동물은 어떤 동물일까?")
                    .padding()
                    .font(.title).bold()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                Text("Fitpet에서 자신과 가장 잘 맞는 반려동물을 확인해 보세요")
                    .padding()
                    .font(.subheadline).bold()
                    .foregroundColor(.secondary)
                Spacer().frame(height: 100)
                if showsDismissButton {
                    // 온보딩이 끝나고 메인 페이지로 넘어가기 위한 버튼
                    // ShowOnboarding 값을 false로 바꾸기 때문에 최초 실행 이후에는 onboardingview를 보여주지 않는다.
                    Button(action: {
                        ShowOnboarding.toggle()
                    }, label: {
                        Text("시작하기")
                            .bold()
                            .frame(width: 300, height: 50)
                            .foregroundColor(.white)
                            .background(Color.yellow.cornerRadius(20))
                    })
                }
                Spacer()
            }
        }
    }
}

struct Onboarding_intro_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_intro(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}
