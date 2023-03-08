//
//  OnboardingPage2.swift
//  Netfulix Clone
//
//  Created by 백대홍 on 2023/02/14.
//

import SwiftUI

struct OnboardingPage2: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea([.all])
   
            VStack(alignment: .center) {
                Image("onboarding2")
                    .resizable()
                    .frame(width: 300, height:  280)
                    Spacer(minLength: 30)
                Text("자신에게 맞는 반려동물을 찾으셨나요?")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                Text("다양한 반려동물 정보를 한곳에서 확인하고 더 많은 정보를 커뮤니티에서 공유해보세요")
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


struct OnboardingPage2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage2(ShowOnboarding: .constant(false),showsDismissButton: false)
    }
}
