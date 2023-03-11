//
//  Question.swift
//  project
//
//  Created by 백대홍 on 2023/03/11.
//

import SwiftUI

struct Question: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    var body: some View {
        VStack {
            //Spacer().frame(height: 50)
            Text("\(question[Qnum])")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            HStack{
                NavigationLink(destination: Answer(ShowOnboarding: $ShowOnboarding,showsDismissButton: true)
                    .font(.largeTitle)
                    .navigationBarBackButtonHidden(true)) {
                        Text("예")
                            .font(.headline).bold()
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        Anum = Qnum+0
                    })
                Spacer().frame(width: 25)
                NavigationLink(destination: Answer(ShowOnboarding: $ShowOnboarding,showsDismissButton: true)
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
                    .simultaneousGesture(TapGesture().onEnded {
                        Anum = Qnum+1
                    })
            }
            Spacer().frame(height: 100)
        }.padding()
    }
}

struct Question_Previews: PreviewProvider {
    static var previews: some View {
        Question(ShowOnboarding: .constant(true),showsDismissButton: true)
    }
}
