//
//  Answer.swift
//  project
//
//  Created by 백대홍 on 2023/03/11.
//

import SwiftUI
struct Answer: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    var body: some View {
        VStack {
            Spacer().frame(height: 0)
            Text("\(answerYN[Anum])입니다!")
                .font(.largeTitle).bold()
            Spacer().frame(height: 50)
            Text("\(answerEX[Qnum])")
                .font(.title)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray.opacity(0.3))
                .foregroundColor(Color.black)
                .cornerRadius(25)
            Spacer().frame(height: 100)
            NavigationLink(destination:
                            Qnum == 4
                           ? AnyView(CompletionPage(ShowOnboarding: $ShowOnboarding,showsDismissButton: true))
                .navigationBarBackButtonHidden(true)
                           : AnyView(Question())
                .navigationBarBackButtonHidden(true)
            ) {
                Text("다음")
                    .font(.headline).bold()
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .foregroundColor(.black)
                    .background(Color.yellow)
                    .cornerRadius(10)
            }
            .simultaneousGesture(TapGesture().onEnded{
                Qnum += 1
            })
            Spacer().frame(height: 0)
        }.padding()
    }
}

struct Answer_Previews: PreviewProvider {
    static var previews: some View {
        Answer(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}
