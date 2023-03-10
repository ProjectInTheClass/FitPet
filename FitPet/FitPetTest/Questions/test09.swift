//
//  test09.swift
//  project
//
//  Created by mnzdrm on 2023/03/09.
//

import SwiftUI

struct test09: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 90)
            VStack {
                Spacer()
                Text("반려동물의 분양가는 어느 정도까지 고려하고 있나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: test10()
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
                NavigationLink(destination: test10()
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
                NavigationLink(destination: test10()
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

struct test09_Previews: PreviewProvider {
    static var previews: some View {
        test09()
    }
}
