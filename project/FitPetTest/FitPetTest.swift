//
//  FitPetTest.swift
//  project
//
//  Created by mnzdrm on 2023/02/27.
//

import Swift
import SwiftUI

// 강아지 고양이 금붕어 도마뱀 새 토끼 햄스터
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
            Spacer().frame(height: 300)
            NavigationLink(destination: test01()
                .font(.largeTitle)
                .navigationBarBackButtonHidden(true)) {
                    Text("알아보기")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
        }.padding()
    }
}

struct ResultPage: View {
    init() { UINavigationBar.setAnimationsEnabled(true) }
    @State private var showWhyModal = false
    var body: some View {
        VStack {
            if bestScore <= defaultScore {
                Text("아쉽게도 당신에게 알맞은 동물을 찾지 못했습니다.")
                    .font(.title).bold()
                    .multilineTextAlignment(.center)
            } else {
                Text("당신에게 알맞은 동물은")
                    .font(.title).bold()
                    .multilineTextAlignment(.center)
                Divider()
                HStack {
                    ForEach(0..<3, id: \.self) { i in
                        if bestPet[i].value == bestScore {
                            ForEach(0..<dict.count, id: \.self) { k in
                                if animalsData[k].title == bestPet[i].key {
                                    VStack {
                                        Image(animalsData[k].image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width:100, height: 100)
                                            .clipShape(Circle()) // Apply clipShape modifier
                                            .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                                        Text("\(animalsData[k].title)")
                                            .font(.title).bold()
                                            .multilineTextAlignment(.center)
                                    }
                                }
                            }
                        }
                    }
                }
                Divider()
                Text("으로 선정됐습니다.")
                    .font(.title).bold()
                    .multilineTextAlignment(.center)
            }
            Spacer().frame(height: 200)
            //Text("Score Check: \n\(bestPet[0].key) \(bestPet[0].value), \(bestPet[1].key) \(bestPet[1].value), \(bestPet[2].key) \(bestPet[2].value), \(bestPet[3].key) \(bestPet[3].value), \(bestPet[4].key) \(bestPet[4].value), \(bestPet[5].key) \(bestPet[5].value), \(bestPet[6].key) \(bestPet[6].value).").font(.headline)
            VStack {
                NavigationLink(destination: ResultExample()) {
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
                        Text("메인으로 돌아가기")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.white)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
            }
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
                WhyModalView()
            }
        }.padding()
    }
}

struct FitPetTest_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage()
    }
}
