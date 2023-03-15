//
//  test05.swift
//  project
//
//  Created by mnzdrm on 2023/03/09.
//

import SwiftUI

struct test05: View {
    @State private var scoreDog: Bool = true
    @State private var scoreCat: Bool = true
    @State private var scoreGoldfish: Bool = true
    @State private var scoreLizard: Bool = true
    @State private var scoreBird: Bool = true
    @State private var scoreRabbit: Bool = true
    @State private var scoreHamster: Bool = true
    @State private var scoreNth: Bool = true
    var nav: Bool { (scoreDog == true && scoreCat == true && scoreGoldfish == true && scoreLizard == true && scoreBird == true && scoreRabbit == true && scoreHamster == true && scoreNth == true)  == false }
    
    var body: some View {
        NavigationStack {
            VStack {
                ProgressBar(progress: 50)
                VStack {
                    Spacer().frame(height: 100)
                    Text("싫어하거나 알레르기가 있는 동물이 있으신가요? \n (복수 응답 가능)")
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    LazyVGrid(columns: columns) {
                        Button {
                            scoreDog.toggle()
                            scoreNth = true
                        } label: {
                            Label("강아지", systemImage: scoreDog ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreDog ? .gray.opacity(0.5) : .blue.opacity(0.75))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreCat.toggle()
                            scoreNth = true
                        } label: {
                            Label("고양이", systemImage: scoreCat ? "pawprint.fill" : "pawprint.fill")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreCat ? .gray.opacity(0.5) : .blue.opacity(0.75))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreGoldfish.toggle()
                            scoreNth = true
                        } label: {
                            Label("금붕어", systemImage: scoreGoldfish ? "pawprint.fill" : "pawprint.fill")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreGoldfish ? .gray.opacity(0.5) : .blue.opacity(0.75))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreLizard.toggle()
                            scoreNth = true
                        } label: {
                            Label("도마뱀", systemImage: scoreLizard ? "pawprint.fill" : "pawprint.fill")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreLizard ? .gray.opacity(0.5) : .blue.opacity(0.75))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreBird.toggle()
                            scoreNth = true
                        } label: {
                            Label("새", systemImage: scoreBird ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreBird ? .gray.opacity(0.5) : .blue.opacity(0.75))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreRabbit.toggle()
                            scoreNth = true
                        } label: {
                            Label("토끼", systemImage: scoreRabbit ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreRabbit ? .gray.opacity(0.5) : .blue.opacity(0.75))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreHamster.toggle()
                            scoreNth = true
                        } label: {
                            Label("햄스터", systemImage: scoreHamster ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreHamster ? .gray.opacity(0.5) : .blue.opacity(0.75))
                                .cornerRadius(10)
                        }
                        Button {
                            scoreNth.toggle()
                            scoreDog = true
                            scoreCat = true
                            scoreGoldfish = true
                            scoreLizard = true
                            scoreBird = true
                            scoreRabbit = true
                            scoreHamster = true
                        } label: {
                            Label("해당 없음", systemImage: scoreNth ? "pawprint.fill" : "pawprint")
                                .labelStyle(.titleOnly)
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(scoreNth ? .gray.opacity(0.5) : .blue.opacity(0.75))
                                .cornerRadius(10)
                        }
                    }
                    Spacer()
                    if nav {
                        NavigationLink(destination: test06()
                            .navigationBarBackButtonHidden(true)) {
                                Text("다음")
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

struct test05_Previews: PreviewProvider {
    static var previews: some View {
        test05()
    }
}
