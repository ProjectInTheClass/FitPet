//
//  test02.swift
//  project
//
//  Created by mnzdrm on 2023/03/09.
//

import SwiftUI

struct test02: View {
    init() { UINavigationBar.setAnimationsEnabled(false) }
    var body: some View {
        VStack {
            ProgressBar(progress: 20)
            VStack {
                Spacer()
                Text("생활 공간은 어느 정도 크기인가요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: test03()
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
                        dict["새"]! += score
                        dict["토끼"]! -= score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: test03()
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
                    .simultaneousGesture(TapGesture().onEnded {
                        dict["강아지"]! += score
                        dict["고양이"]! += score
                        dict["도마뱀"]! += score
                        dict["금붕어"]! += score
                        dict["새"]! += score
                        dict["토끼"]! += score
                        dict["햄스터"]! += score
                    })
                NavigationLink(destination: test03()
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

struct test02_Previews: PreviewProvider {
    static var previews: some View {
        test02()
    }
}
