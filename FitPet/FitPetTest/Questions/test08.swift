//
//  test08.swift
//  project
//
//  Created by mnzdrm on 2023/03/09.
//

import SwiftUI

struct test08: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 80)
            VStack {
                Spacer()
                Text("어느 정도 수명의 반려동물을 원하시나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: test09()
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
                NavigationLink(destination: test09()
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
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! -= score
                        dict["햄스터"]! -= score
                    })
                NavigationLink(destination: test09()
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
                        dict["새"]! += score
                        dict["토끼"]! -= score
                        dict["햄스터"]! -= score
                    })
                Spacer()
            }.padding()
        }.transition(.scale)
    }
}

struct test08_Previews: PreviewProvider {
    static var previews: some View {
        test08()
    }
}
