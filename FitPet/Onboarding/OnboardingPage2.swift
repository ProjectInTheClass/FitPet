//
//  OnboardingPage2.swift
//  FitPet
//
//  Created by 백대홍 on 2023/02/09.
//

import SwiftUI

struct OnboardingPage3:View {
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
                
                Text("자신에게 맞는 반려동물을 찾으셨나요?")
                    .padding()
                    .font(.title).bold()
                    .foregroundColor(.black)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                
                Text("다양한 반려동물 정보를 한곳에서 확인하고 더 많은 정보를 커뮤니티에서 공유해보세요")
                    .padding()
                    .font(.subheadline).bold()
                    .fixedSize(horizontal: false, vertical: true)
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

struct OnboardingPage3_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage3(ShowOnboarding: .constant(false),showsDismissButton: false)
    }
}
