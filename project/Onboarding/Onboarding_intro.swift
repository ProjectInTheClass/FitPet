//
//  Onboarding_intro.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct Onboarding_intro: View {
    @Binding var Showintro: Bool
    let showsButton: Bool
    @AppStorage("_Firstrun") var Firstrun: Bool = true
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Spacer(minLength: 10)
            Text("반려동물, 일상을 함께 공유하다.")
                .font(.title.bold())
             
            Text("Fitpet ")
                .font(.title3)
                .bold()
                .foregroundColor(.yellow)
            +
            
            Text("은 반려동물 추천 서비스를 통해 반려동물 함께하는 지속가능한 일상을 만들어  나갑니다.")
                .font(.title3)
            Spacer(minLength: 10)
            VStack {
                if showsButton {
                    Button(action: {
                        Showintro.toggle()
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
            Spacer(minLength: 10)
        }
        
        .padding()
       
       
        
    }
}

struct Onboarding_intro_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_intro(Showintro: .constant(true),showsButton: true)
    }
}
