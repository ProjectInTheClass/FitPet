//
//  CompletionPage.swift
//  project
//
//  Created by 백대홍 on 2023/03/11.
//

import SwiftUI

struct CompletionPage: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    var body: some View {
        VStack {
            Spacer().frame(height: 100)
            Text("반려동물 \n자가 진단 완료!")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            Text("이제 바로 나와 잘맞는 반려동물을 찾아보세요")
                .font(.title3).bold()
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding()
            Spacer().frame(height: 200)
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
            Spacer().frame(height: 75)
        }
    }
}

struct CompletionPage_Previews: PreviewProvider {
    static var previews: some View {
        CompletionPage(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}
