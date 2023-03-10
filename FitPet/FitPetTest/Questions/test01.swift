//
//  test01.swift
//  project
//
//  Created by mnzdrm on 2023/03/09.
//

import SwiftUI

struct test01: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 10)
            VStack {
                Spacer()
                Text("당신은 어느 환경에서 주로 생활하나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: test02()
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
                NavigationLink(destination: test02()
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

struct test01_Previews: PreviewProvider {
    static var previews: some View {
        test01()
    }
}
