//
//  Onboarding_intro.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct Onboarding_intro: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 50) {
            Text("반려동물, 일상을 함께 공유하다.")
                .font(.title.bold())
             
            Text("fitpet은 반려동물 추천 서비스를 통해 반려동물 함께하는 지속가능한 일상을 만들어 나갑니다.")
                .font(.title3)
                
        }
        .padding()
        
    }
}

struct Onboarding_intro_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_intro()
    }
}
