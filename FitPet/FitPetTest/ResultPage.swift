//
//  ResultPage.swift
//  FitPet
//
//  Created by 백대홍 on 2023/06/02.
//

import SwiftUI

struct ResultPage: View {
    init() { UINavigationBar.setAnimationsEnabled(true)}
    @State private var showWhyModal = false
    var body: some View {
        NavigationStack {
            VStack {
                if bestScore >= defaultScore {
                    Spacer().frame(height: 30)
                    Text("당신에게 알맞은 동물은")
                        .font(.title).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 70)
                    HStack {
                        ForEach(bestPet.filter { $0.value == bestScore }, id: \.key) { pet in
                            if let animal = animalsData.first(where: { $0.title == pet.key }) {
                                VStack() {
                                    Image(animal.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width:100, height: 100)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                                    
                                    Image("왕관")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .offset(y: -150)
                                    
                                    Text("\(animal.title)")
                                        .font(.title).bold()
                                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                                        .background(Color.yellow)
                                        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                                        .overlay(RoundedRectangle(cornerRadius: 25, style: .continuous).stroke(Color.yellow, lineWidth: 5))
                                        .multilineTextAlignment(.center)
                                    Spacer().frame(height: 20)
                                }
                                .padding(5)
                            }
                        }
                    }
                    Spacer().frame(height: 100)
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
                        NavigationLink(destination: FitPetTest()
                            .navigationBarBackButtonHidden(true)) {
                                Text("테스트 다시하기")
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
                    
                } else {
                    Spacer().frame(height: 5)
                    Text("아쉽게도\n당신에게 알맞은 동물을 찾지 못했습니다.")
                        .font(.title).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 340)
                    NavigationLink(destination: FitPetTest()
                        .navigationBarBackButtonHidden(true)) {
                            Text("테스트 다시하기")
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
                    Spacer().frame(height: 30)
                    
                }
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showWhyModal = true
                    }, label: {
                        Image(systemName: "questionmark.circle.fill")
                            .foregroundColor(.yellow)
                    })
                }
            }
            .sheet(isPresented: $showWhyModal) {
                WhyModalView(showWhyModal: $showWhyModal)
            }
        }
    }
}

struct ResultPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage()
    }
}

