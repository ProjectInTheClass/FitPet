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
                HStack {
                    Text("앱이름")
                }
                Spacer(minLength: 20)
                VStack(alignment: .center) {
                    Image("onboarding1")
                        .resizable()
                        .frame(width: 300, height:  280)
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
                
                
               
                Spacer(minLength: 20)
            }.padding()
        }
    }
}

struct OnboardingPage1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage1(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}
