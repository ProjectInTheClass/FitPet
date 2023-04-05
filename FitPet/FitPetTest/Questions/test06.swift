//
//  test06.swift
//  project
//
//  Created by mnzdrm on 2023/03/09.
//

import SwiftUI

struct test06: View {
    var body: some View {
        NavigationStack {
            VStack {
                ProgressBar(progress: 60)
                VStack {
                    Spacer()
                    Text("어떤 활동을 선호하나요?")
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    NavigationLink(destination: test07()
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
                    NavigationLink(destination: test07()
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
                    NavigationLink(destination: test07()
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
                    VStack {
                        ForEach(dict.keys.sorted(), id: \.self) { key in
                            Text("\(key): \(dict[key] ?? 0)")
                        }
                    }
                }
                .padding()
            }
            .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.circle.fill").font(.system(size: 25)).foregroundColor(Color.yellow)})
        }
        .transition(.scale)
    }
}

struct test06_Previews: PreviewProvider {
    static var previews: some View {
        test06()
    }
}
