//
//  test07.swift
//  project
//
//  Created by mnzdrm on 2023/03/09.
//

import SwiftUI

struct test07: View {
    var body: some View {
        VStack {
            ProgressBar(progress: 70)
            VStack {
                Spacer()
                Text("반려동물과의 상호 작용을 중요하게 여기나요?")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                NavigationLink(destination: test08()
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
                NavigationLink(destination: test08()
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

struct test07_Previews: PreviewProvider {
    static var previews: some View {
        test07()
    }
}
