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
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea([.all])
            
            
                VStack(alignment: .center) {
                    Spacer(minLength: 150)
                    Image("Applogo")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                    Spacer(minLength: 30)
                    Text("나와 가장 잘 맞는 반려 동물은 뭘까?")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .bold()
                        .foregroundColor(.black)
                        .padding()
                    Text("Fitpet에서 자신과 가장 잘맞는 반려동물을 확인해보세요")
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

struct Onboarding_intro_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_intro(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}

//
//        VStack(alignment: .center, spacing: 50) {
//            ZStack {
//                Circle()
//                    .stroke(Color.yellow, lineWidth: 5)
//                    .frame(width: 100, height: 100)
//
//                Image("Applogo")
//                    .resizable()
//                    .frame(width: 130, height: 130)
//                    .clipShape(Circle())
//            }
//            Spacer()
//            Text("반려동물, 일상을 함께 공유하다.")
//                .font(.title.bold())
//
//            Text("Fitpet")
//                .font(.title3)
//                .bold()
//                .foregroundColor(.yellow)
//            +
//
//            Text("은 반려동물 추천 서비스를 통해 반려동물 함께하는 지속가능한 일상을 만들어 나갑니다.")
//                .font(.title3)
//
//
//
//
//            Spacer().frame(height: 110)
//            VStack {
//                if showsDismissButton {
//                    Button(action: {
//                        ShowOnboarding.toggle()
//                    }, label: {
//                        Text("시작하기")
//                            .foregroundColor(.white)
//                            .bold()
//
//                            .frame(width: 300, height: 50)
//                            .background(Color.yellow.cornerRadius(20))
//
//
//                    })
//                }
//            }
//            Spacer(minLength: 20)
//        }
//
//        .padding()
//
//
//
//    }
//}
