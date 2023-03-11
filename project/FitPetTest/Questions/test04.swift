//
//  test04.swift
//  project
//
//  Created by mnzdrm on 2023/03/09.
//

import SwiftUI

struct test04: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 40)
            VStack {
                Spacer()
                Text("희망하는 반려동물의 크기를 선택해 주세요.")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: test05()
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
                NavigationLink(destination: test05()
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
                NavigationLink(destination: test05()
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

struct test04_Previews: PreviewProvider {
    static var previews: some View {
        test04()
    }
}
