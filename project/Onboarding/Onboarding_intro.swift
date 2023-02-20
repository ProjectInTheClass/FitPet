//
//  Onboarding_intro.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct Onboarding_intro: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Spacer()
            Text("반려동물, 일상을 함께 공유하다.")
                .font(.title.bold())
             
            Text("Fitpet ")
                .font(.title3)
                .bold()
                .foregroundColor(.yellow)
            +
            
            Text("은 반려동물 추천 서비스를 통해 반려동물 함께하는 지속가능한 일상을 만들어  나갑니다.")
                .font(.title3)
            Spacer()
            Spacer()
            VStack {
                if showsDismissButton {
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
            }
            Spacer()
        }
        
        .padding()
       
       
        
    }
}

struct Onboarding_intro_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_intro(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}
