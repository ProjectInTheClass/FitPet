//
//  test10.swift
//  project
//
//  Created by mnzdrm on 2023/03/09.
//

import SwiftUI

struct test10: View {
    @State private var scoreDog: Bool = false
    @State private var scoreCat: Bool = false
    @State private var scoreGoldfish: Bool = false
    @State private var scoreLizard: Bool = false
    @State private var scoreBird: Bool = false
    @State private var scoreRabbit: Bool = false
    @State private var scoreHamster: Bool = false
    @State private var scoreNth: Bool = false
    var nav: Bool { (scoreDog == false && scoreCat == false && scoreGoldfish == false && scoreLizard == false && scoreBird == false && scoreRabbit == false && scoreHamster == false && scoreNth == false)  == false }
    
    var body: some View {
        NavigationStack {
            VStack {
                ProgressBar(progress: 100)
                VStack {
                    Spacer().frame(height: 100)
                    Text("가장 선호하는 동물을 선택해 주세요! \n (복수 응답 가능)")
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    LazyVGrid(columns: columns) {
                        Button {
                            scoreDog.toggle()
                            scoreNth = false
                        } label: {
                            Label("강아지", systemImage: scoreDog ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreDog ? .blue.opacity(0.75) : .gray.opacity(0.5))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreCat.toggle()
                            scoreNth = false
                        } label: {
                            Label("고양이", systemImage: scoreCat ? "pawprint.fill" : "pawprint.fill")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreCat ? .blue.opacity(0.75) : .gray.opacity(0.5))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreGoldfish.toggle()
                            scoreNth = false
                        } label: {
                            Label("금붕어", systemImage: scoreGoldfish ? "pawprint.fill" : "pawprint.fill")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreGoldfish ? .blue.opacity(0.75) : .gray.opacity(0.5))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreLizard.toggle()
                            scoreNth = false
                        } label: {
                            Label("도마뱀", systemImage: scoreLizard ? "pawprint.fill" : "pawprint.fill")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreLizard ? .blue.opacity(0.75) : .gray.opacity(0.5))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreBird.toggle()
                            scoreNth = false
                        } label: {
                            Label("새", systemImage: scoreBird ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreBird ? .blue.opacity(0.75) : .gray.opacity(0.5))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreRabbit.toggle()
                            scoreNth = false
                        } label: {
                            Label("토끼", systemImage: scoreRabbit ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreRabbit ? .blue.opacity(0.75) : .gray.opacity(0.5))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreHamster.toggle()
                            scoreNth = false
                        } label: {
                            Label("햄스터", systemImage: scoreHamster ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreHamster ? .blue.opacity(0.75) : .gray.opacity(0.5))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreNth.toggle()
                            scoreDog = false
                            scoreCat = false
                            scoreGoldfish = false
                            scoreLizard = false
                            scoreBird = false
                            scoreRabbit = false
                            scoreHamster = false
                        } label: {
                            Label("해당 없음", systemImage: scoreNth ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreNth ? .blue.opacity(0.75) : .gray.opacity(0.5))
                                .cornerRadius(10)
                        }
                    }
                    Spacer()
                    if nav {
                        NavigationLink(destination: ResultPage()
                            .navigationBarBackButtonHidden(true)) {
                                Text("결과 보기")
                                    .font(.headline).bold()
                                    .padding()
                                    .frame(maxWidth: .infinity, minHeight: 50)
                                    .foregroundColor(.black)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                            }
                            .simultaneousGesture(TapGesture().onEnded{
                                if scoreDog {
                                    dict["강아지"]! += score
                                } else {
                                    dict["강아지"]! -= score
                                }
                                if scoreCat {
                                    dict["고양이"]! += score
                                } else {
                                    dict["고양이"]! -= score
                                }
                                if scoreGoldfish {
                                    dict["금붕어"]! += score
                                } else {
                                    dict["금붕어"]! -= score
                                }
                                if scoreLizard {
                                    dict["도마뱀"]! += score
                                } else {
                                    dict["도마뱀"]! -= score
                                }
                                if scoreBird {
                                    dict["새"]! += score
                                } else {
                                    dict["새"]! -= score
                                }
                                if scoreRabbit {
                                    dict["토끼"]! += score
                                } else {
                                    dict["토끼"]! -= score
                                }
                                if scoreHamster {
                                    dict["햄스터"]! += score
                                } else {
                                    dict["햄스터"]! -= score
                                }
                            })
                    }
                    Spacer()
                }
                .padding()
            }
            .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.circle.fill").font(.system(size: 25)).foregroundColor(Color.yellow)})
        }
        .transition(.scale)
    }
}

struct test10_Previews: PreviewProvider {
    static var previews: some View {
        test10()
    }
}
