//
//  FitPetTest.swift
//  project
//
//  Created by mnzdrm on 2023/02/27.
//

import Swift
import SwiftUI

// 강아지 고양이 금붕어 도마뱀 새 토끼 햄스터
var defalt: Int = 50
var score: Int = 5
var dict: [String: Int] = ["강아지": defalt, "고양이": defalt, "금붕어": defalt, "도마뱀": defalt, "새": defalt, "토끼": defalt, "햄스터": defalt]
var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

struct FitPetTest: View {
    var body: some View {
        NavigationStack {
            Text("나의 맞춤 동물을 알아볼까요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 300)
            NavigationLink(destination: T01()
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

// MARK: - Test Start
struct T01: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 00)
            VStack {
                Spacer()
                Text("당신은 어느 환경에서 주로 생활하나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: T02()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("아파트")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! -= score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! -= score
                        dict["토끼"]! -= score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: T02()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("단독 주택")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! += score
                    })
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct T02: View {
    init() { UINavigationBar.setAnimationsEnabled(false) }
    var body: some View {
        VStack {
            ProgressBar(progress: 10)
            VStack {
                Spacer()
                Text("생활 공간은 어느 정도 크기인가요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: T03()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("넓지 않아요.")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! -= score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! -= score
                        dict["토끼"]! -= score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: T03()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("적당해요.")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: T03()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("매우 넓어요.")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! += score
                    })
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct T03: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 20)
            VStack {
                Spacer()
                Text("반려동물에게 투자를 할 수 있는 시간이 많나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: T04()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("많이 없어요.")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! -= score
                        dict["고양이"]! -= score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! -= score
                        dict["토끼"]! -= score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: T04()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("적당해요.")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! -= score
                        dict["금붕어"]! -= score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! -= score
                    })
                NavigationLink(destination: T04()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("매우 많아요.")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! += score
                    })
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct T04: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 30)
            VStack {
                Spacer()
                Text("희망하는 반려동물의 크기를 선택해주세요.")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: T05()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("소형")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! -= score
                        dict["고양이"]! -= score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! -= score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: T05()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("중형")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! -= score
                        dict["금붕어"]! -= score
                        dict["새"]! -= score
                        dict["토끼"]! += score
                        dict["햄스터"]! -= score
                    })
                NavigationLink(destination: T05()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("대형")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! -= score
                        dict["도마뱀"]! -= score
                        dict["금붕어"]! -= score
                        dict["새"]! -= score
                        dict["토끼"]! -= score
                        dict["햄스터"]! -= score
                    })
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct T05: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 40)
            VStack {
                Spacer()
                Text("특정 동물의 알레르기를 가지고 있나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                LazyVGrid(columns: columns) {
                    NavigationLink(destination: T06()
                        .font(.largeTitle)
                        .navigationBarBackButtonHidden(true)) {
                            Text("강아지")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= defalt
                            dict["고양이"]! += score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! += score
                            dict["토끼"]! += score
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: T06()
                        .font(.largeTitle)
                        .navigationBarBackButtonHidden(true)) {
                            Text("고양이")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score
                            dict["고양이"]! -= defalt
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! += score
                            dict["토끼"]! += score
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: T06()
                        .font(.largeTitle)
                        .navigationBarBackButtonHidden(true)) {
                            Text("금붕어")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score
                            dict["고양이"]! += score
                            dict["도마뱀"]! -= defalt
                            dict["금붕어"]! += score
                            dict["새"]! += score
                            dict["토끼"]! += score
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: T06()
                        .font(.largeTitle)
                        .navigationBarBackButtonHidden(true)) {
                            Text("도마뱀")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score
                            dict["고양이"]! += score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! -= defalt
                            dict["새"]! += score
                            dict["토끼"]! += score
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: T06()
                        .font(.largeTitle)
                        .navigationBarBackButtonHidden(true)) {
                            Text("새")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score
                            dict["고양이"]! += score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! -= defalt
                            dict["토끼"]! += score
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: T06()
                        .font(.largeTitle)
                        .navigationBarBackButtonHidden(true)) {
                            Text("토끼")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score
                            dict["고양이"]! += score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! += score
                            dict["토끼"]! -= defalt
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: T06()
                        .font(.largeTitle)
                        .navigationBarBackButtonHidden(true)) {
                            Text("햄스터")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score
                            dict["고양이"]! += score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! += score
                            dict["토끼"]! += score
                            dict["햄스터"]! -= defalt
                        })
                    NavigationLink(destination: T06()
                        .font(.largeTitle)
                        .navigationBarBackButtonHidden(true)) {
                            Text("해당 없음")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score
                            dict["고양이"]! += score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! += score
                            dict["토끼"]! += score
                            dict["햄스터"]! += score
                        })
                }
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct T06: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 50)
            VStack {
                Spacer()
                Text("어떤 활동을 선호 하나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: T07()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("활발한 활동\n(운동, 산책, 등산)")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! -= score
                        dict["도마뱀"]! -= score
                        dict["금붕어"]! -= score
                        dict["새"]! -= score
                        dict["토끼"]! += score
                        dict["햄스터"]! -= score
                    })
                NavigationLink(destination: T07()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("정적인 활동\n(독서, 실내 활동)")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! -= score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! -= score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: T07()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("상관없어요")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 75)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! += score
                    })
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct T07: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 60)
            VStack {
                Spacer()
                Text("반려동물과의 상호 작용을 중요하게 여기나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: T08()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("네")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! -= score
                        dict["금붕어"]! -= score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! -= score
                    })
                NavigationLink(destination: T08()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("아니오")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! -= score
                        dict["고양이"]! -= score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! -= score
                        dict["토끼"]! -= score
                        dict["햄스터"]! += score
                    })
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct T08: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 70)
            VStack {
                Spacer()
                Text("어느 정도 수명의 반려동물을 원하시나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: T09()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("5년 미만")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! -= score
                        dict["고양이"]! -= score
                        dict["도마뱀"]! -= score
                        dict["금붕어"]! -= score
                        dict["새"]! -= score
                        dict["토끼"]! += score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: T09()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("10년 내외")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! -= score
                        dict["새"]! -= score
                        dict["토끼"]! -= score
                        dict["햄스터"]! -= score
                    })
                NavigationLink(destination: T09()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("20년 이상")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! -= score
                        dict["고양이"]! -= score
                        dict["도마뱀"]! -= score
                        dict["금붕어"]! -= score
                        dict["새"]! -= score
                        dict["토끼"]! -= score
                        dict["햄스터"]! -= score
                    })
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct T09: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 80)
            VStack {
                Spacer()
                Text("반려동물의 분양가는 어느 정도까지 고려하고 있나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: T10()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("입양")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: T10()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("10만원 미만")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! -= score
                        dict["고양이"]! -= score
                        dict["도마뱀"]! -= score
                        dict["금붕어"]! += score
                        dict["새"]! -= score
                        dict["토끼"]! -= score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: T10()
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("30만 원 이상")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! += score
                    })
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct T10: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 90)
            VStack {
                Spacer()
                Text("가장 선호하는 동물을 선택해 주세요!")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                LazyVGrid(columns: columns) {
                    NavigationLink(destination: TF()
                                   
                        .navigationBarBackButtonHidden(true)) {
                            Text("강아지")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score
                            dict["고양이"]! -= score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! -= score
                            dict["새"]! -= score
                            dict["토끼"]! -= score
                            dict["햄스터"]! -= score
                        })
                    NavigationLink(destination: TF()
                                   
                        .navigationBarBackButtonHidden(true)) {
                            Text("고양이")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score
                            dict["고양이"]! += score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! -= score
                            dict["새"]! -= score
                            dict["토끼"]! -= score
                            dict["햄스터"]! -= score
                        })
                    NavigationLink(destination: TF()
                                   
                        .navigationBarBackButtonHidden(true)) {
                            Text("금붕어")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score
                            dict["고양이"]! -= score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! += score
                            dict["새"]! -= score
                            dict["토끼"]! -= score
                            dict["햄스터"]! -= score
                        })
                    NavigationLink(destination: TF()
                                   
                        .navigationBarBackButtonHidden(true)) {
                            Text("도마뱀")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score
                            dict["고양이"]! -= score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! -= score
                            dict["새"]! -= score
                            dict["토끼"]! -= score
                            dict["햄스터"]! -= score
                        })
                    NavigationLink(destination: TF()
                                   
                        .navigationBarBackButtonHidden(true)) {
                            Text("새")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score
                            dict["고양이"]! -= score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! -= score
                            dict["새"]! += score
                            dict["토끼"]! -= score
                            dict["햄스터"]! -= score
                        })
                    NavigationLink(destination: TF()
                                   
                        .navigationBarBackButtonHidden(true)) {
                            Text("토끼")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score
                            dict["고양이"]! -= score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! -= score
                            dict["새"]! -= score
                            dict["토끼"]! += score
                            dict["햄스터"]! -= score
                        })
                    NavigationLink(destination: TF()
                                   
                        .navigationBarBackButtonHidden(true)) {
                            Text("햄스터")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score
                            dict["고양이"]! -= score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! -= score
                            dict["새"]! -= score
                            dict["토끼"]! -= score
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: TF()
                                   
                        .navigationBarBackButtonHidden(true)) {
                            Text("해당 없음")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score
                            dict["고양이"]! -= score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! -= score
                            dict["새"]! -= score
                            dict["토끼"]! -= score
                            dict["햄스터"]! -= score
                        })
                }
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

// MARK: - Test End
let bestPet = dict.sorted { $0.1 > $1.1 }
let bestScore: Int = dict.values.max()!

struct TF: View {
    init() { UINavigationBar.setAnimationsEnabled(true) }
    @State private var showWhyModal = false
    var body: some View {
        VStack {
            if bestScore < defalt {
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
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:100, height: 100)
                                            .cornerRadius(20)
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
        FitPetTest()
    }
}
