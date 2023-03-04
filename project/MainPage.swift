//
//  MainPage.swift
//  PetFollow
//
//  Created by mnzdrm on 2023/02/20.
//

import SwiftUI

struct MainPage: View {
    @State private var back: Bool = false
    @AppStorage("_Firstrun") var Firstrun: Bool = true
    @State var ShowOnboarding: Bool = true
    var body: some View {
        NavigationStack() {
            VStack {
                Image(systemName: "pawprint.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size: 50))
                Spacer().frame(height: 25)
                Text("반려동물과 함께 일상을 공유하다").multilineTextAlignment(.center).font(.largeTitle).bold()
                Spacer().frame(height: 150)
                /*HStack{
                    Spacer().frame(width: 25)
                    NavigationLink(destination: QnA()) {
                        Text("반려동물 자격요건")
                            .font(.title).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 100)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    Spacer().frame(width: 25)
                    NavigationLink(destination: QnA()) {
                        Text("반려동물 추천받기")
                            .font(title).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 100)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    Spacer().frame(width: 25)
                }
                Spacer().frame(height: 25)
                HStack{
                    Spacer().frame(width: 25)
                    NavigationLink(destination: Animal_Web()) {
                        Text("반려동물 백과사전")
                            .font(.title).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 100)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    Spacer().frame(width: 25)
                    NavigationLink(destination: QnA()) {
                        Text("추가")
                            .font(.title).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 100)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    Spacer().frame(width: 25)
                }*/
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
            Spacer().frame(height: 50)
                .navigationTitle("Home")
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
