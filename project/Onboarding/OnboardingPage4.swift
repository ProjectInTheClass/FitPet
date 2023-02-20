//
//  OnboardingPage4.swift
//  Netfulix Clone
//
//  Created by 백대홍 on 2023/02/14.
//

import SwiftUI

struct OnboardingPage4: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea([.all])
            
            VStack(alignment: .center) {
                HStack {
                    Text("Fitpet")
                }
                VStack(alignment: .center) {
                    Image("onboarding4")
                        .resizable()
                        .frame(width: 300, height: 280)
                        Spacer(minLength: 30)
                    Text("반려동물, 일상을 함께 공유하다.")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.black)
                        .padding()
                    Text("~~은 반려동물 추천 서비스를 통해 반려동물과 함께하는 지속가능한 일상을 만들어 나갑니다.")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.secondary)
                        .padding()
                    
                    Spacer()
                }.padding()
               
                
                
                if showsDismissButton {
                    // 온보딩이 끝나고 메인 페이지로 넘어가기 위한 버튼
                    // ShowOnboarding 값을 false로 바꾸기 때문에 최초 실행 이후에는 onboardingview를 보여주지 않는다.
                    Button(action: {
                        ShowOnboarding.toggle()
                    }, label: {
                        Text("시작하기")
                            .foregroundColor(.white)
                            .bold()
                            .cornerRadius(100)
                            .frame(width: 300, height: 50)
                            .background(.yellow)
                        
                        
                    })
                }
                Spacer(minLength: 20)
            }.padding()
        }
    }
}

struct OnboardingPage4_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage4(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}
