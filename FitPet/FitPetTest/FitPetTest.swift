//
//  FitPetTest.swift
//  FitPet
//
//  Created by mnzdrm on 2023/02/27.
//

import Swift
import SwiftUI

// 강아지 고슴도치 고양이 금붕어 도마뱀 뱀 새 토끼 햄스터
var defaultScore: Int = 50
var score: Int = 5
var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
var dict: [String: Int] = ["강아지": defaultScore, "고슴도치": defaultScore, "고양이": defaultScore, "금붕어": defaultScore, "도마뱀": defaultScore, "뱀": defaultScore, "새": defaultScore, "토끼": defaultScore, "햄스터": defaultScore]
let bestPet = dict.sorted { $0.1 > $1.1 }
let bestScore: Int = dict.values.max()!

struct FitPetTest: View {
    var body: some View {
        NavigationStack {
            Text("나의 맞춤 동물을 알아볼까요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
                .padding()
            Spacer().frame(height: 350)
            NavigationLink(destination: test01()
                .navigationBarBackButtonHidden(true)) {
                    Text("알아보기")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                .padding()
                .simultaneousGesture(TapGesture().onEnded{
                    dict = ["강아지": defaultScore, "고슴도치": defaultScore, "고양이": defaultScore, "금붕어": defaultScore, "도마뱀": defaultScore, "뱀": defaultScore, "새": defaultScore, "토끼": defaultScore, "햄스터": defaultScore]
                })
            Spacer().frame(height: 50)
        }
    }
}

struct ResultPage: View {
    init() { UINavigationBar.setAnimationsEnabled(true) }
    @State private var showWhyModal = false
    
    var body: some View {
        NavigationStack {
            VStack {
                if bestScore <= defaultScore {
                    Spacer().frame(height: 25)
                    Text("아쉽게도\n당신에게 알맞은 동물을 찾지 못했습니다.")
                        .font(.title).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 375)
                    NavigationLink(destination: MainPage()
                        .navigationBarBackButtonHidden(true)) {
                            Text("메인으로 돌아가기")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                    Spacer().frame(height: 50)
                } else {
                    Text("당신에게 알맞은 동물은")
                        .font(.title).bold()
                        .multilineTextAlignment(.center)
                    Divider()
                    HStack {
                        ForEach(bestPet.filter { $0.value == bestScore }, id: \.key) { pet in
                            if let animal = animalsData.first(where: { $0.title == pet.key }) {
                                VStack {
                                    Image(animal.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width:100, height: 100)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                                    Text("\(animal.title)")
                                        .font(.title).bold()
                                        .multilineTextAlignment(.center)
                                }
                                .padding(5)
                            }
                        }
                    }
                    Divider()
                    Text("으로 선정됐습니다.")
                        .font(.title).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 200)
                    VStack {
                        NavigationLink(destination: ResultView()) {
                            Text("결과 자세히 보기")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        NavigationLink(destination: MainPage()
                            .navigationBarBackButtonHidden(true)) {
                                Text("홈으로 돌아가기")
                                    .font(.headline).bold()
                                    .padding()
                                    .frame(maxWidth: .infinity, minHeight: 50)
                                    .foregroundColor(.white)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                            }
                        Spacer().frame(height: 50)
                    }
                }
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showWhyModal = true
                    }, label: {
                        Image(systemName: "questionmark.circle.fill")
                            .foregroundColor(.black)
                    })
                }
            }
            .sheet(isPresented: $showWhyModal) {
                WhyModalView(showWhyModal: $showWhyModal)
            }
        }
    }
}

struct FitPetTest_Previews: PreviewProvider {
    static var previews: some View {
        FitPetTest()
    }
}
