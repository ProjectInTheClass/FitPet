//
//  MainPage.swift
//  FitPet
//
//  Created by mnzdrm on 2023/02/20.
//

import SwiftUI

struct MainPage: View {
    @AppStorage("_Firstrun") var Firstrun: Bool = true
    @State var ShowOnboarding: Bool = true
    var logoSize: CGFloat = 300
    
    var body: some View {
        NavigationStack() {
            Spacer().frame(height: 5)
            VStack {
                //Image(systemName: "pawprint.fill")
                ZStack {
                    Circle()
                        .stroke(Color.yellow, lineWidth: 10)
                        .frame(width: logoSize, height: logoSize)
                    Image("Applogo")
                        .resizable()
                        .frame(width: logoSize, height: logoSize)
                        .clipShape(Circle())
                    Text("반려동물과 함께\n\n\n\n일상을 공유하다")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 83 / 255, green: 67 / 255, blue: 91 / 255))
                }
                Spacer().frame(height: 200)
                NavigationLink(destination: QualificationTest()) {
                    Text("반려동물 상식퀴즈") //반려동물 자격 요건 검사, 사전 지식 퀴즈, 자가 진단 퀴즈
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
                Spacer().frame(height: 50)
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
