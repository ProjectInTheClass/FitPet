//
//  OnboardingPage1.swift
//  Netfulix Clone
//
//  Created by 백대홍 on 2023/02/14.
//

import SwiftUI

struct OnboardingPage1: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea([.all])
            

                VStack(alignment: .center) {
                    Image("onboarding1")
                        .resizable()
                        .frame(width: 300, height:  280)
                        Spacer(minLength: 30)
                    Text("지속 가능한 반려동물과의 일상을 제공해드립니다.")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .bold()
                        .foregroundColor(.black)
                        .padding()
                    Text("FitPet은 반려동물 추천 서비스를 통해 반려동물과 함께하는 지속가능한 일상을 만들어 나갑니다.")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.secondary)
                        .padding()
                    Spacer().frame(height: 100)
                    if showsDismissButton {
                        // 온보딩이 끝나고 메인 페이지로 넘어가기 위한 버튼
                        // ShowOnboarding 값을 false로 바꾸기 때문에 최초 실행 이후에는 onboardingview를 보여주지 않는다.
                        Button(action: {
                            ShowOnboarding.toggle()
                        }, label: {
                            Text("시작하기")
                                .foregroundColor(.white)
                                .bold()
                                .frame(width: 300, height: 50)
                                .background(Color.yellow.cornerRadius(20))
                            
                            
                        })
                    }
                    Spacer()
                }.padding()
        
                
               
                Spacer(minLength: 20)
            
            }.padding()
        }
    }

struct OnboardingPage1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage1(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}
