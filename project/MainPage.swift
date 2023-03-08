//
//  MainPage.swift
//  PetFollow
//
//  Created by mnzdrm on 2023/02/20.
//

import SwiftUI

struct MainPage: View {
    @AppStorage("_Firstrun") var Firstrun: Bool = true
    @State var ShowOnboarding: Bool = true
    var body: some View {
        NavigationStack() {
            VStack {
                //Image(systemName: "pawprint.fill")
                ZStack {
                    Circle()
                        .stroke(Color.yellow, lineWidth: 5)
                        .frame(width: 100, height: 100)
                    
                    Image("Applogo")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                }
                Spacer().frame(height: 30)
                Text("반려동물과 함께 일상을 공유하다")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 150)
                NavigationLink(destination: QnA()) {
                    Text("반려동물 자가 진단 퀴즈")//반려동물 자격 요건 검사, 사전 지식 퀴즈
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.black)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }.padding(.horizontal)
                NavigationLink(destination: FitPetTest()) {
                    Text("반려동물 추천받기")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.black)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }.padding(.horizontal)
                NavigationLink(destination: Animal_Web()) {
                    Text("반려동물 백과사전")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.black)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }.padding(.horizontal)
            }
        }
        .fullScreenCover(isPresented: $Firstrun) {
            OnboardingMainView(ShowOnboarding: $Firstrun)
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
