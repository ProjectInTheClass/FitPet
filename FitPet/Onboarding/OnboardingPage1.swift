//
//  OnboardingPage1.swift
//  FitPet
//
//  Created by 백대홍 on 2023/02/09.
//

import SwiftUI

struct OnboardingPage2: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea([.all])
            VStack(alignment: .center,spacing: 20) {
                Spacer().frame(width: 20)
                Image("앱로고")
                    .resizable()
                    .frame(width: 250, height:  250)
                
                Text("반려동물과의 지속 가능한 일상을 제공해 드립니다.")
                    .padding()
                    .font(.title).bold()
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Text("FitPet은 반려동물 추천 서비스를 통해 반려동물과 함께하는 지속 가능한 일상을 만들어 나갑니다.")
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.subheadline).bold()
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
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
                Spacer().frame(width: 20)
            }
        }
    }
}

struct OnboardingPage2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage2(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}
