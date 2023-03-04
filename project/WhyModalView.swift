//
//  WhyModalView.swift
//  project
//
//  Created by 백대홍 on 2023/03/04.
//

import SwiftUI

struct WhyModalView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("왜 저런 결과가 나왔나요?")
                .font(.largeTitle)
                .fontWeight(.bold)
            VStack(alignment: .center) {
                Image(systemName: "questionmark.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.yellow)
                    .padding()
                Text("검사 결과중 가장 중요하게 여겨지는 부분은 알레르기 반응입니다. 따라서 알레르기 반응이 있는 동물이 있다면 해당 동물은 결과에서 비교적 낮은 점수로 측정됩니다.")
                    .fixedSize(horizontal: false, vertical: true)
            }.padding()
            
            
            VStack(alignment: .center) {
                Image(systemName:"person.2.wave.2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .frame(width: 120, height: 120)
                Text("알레르기뿐만 아니라 질문지에서 답변하신 내용을 토대로 점수를 부여하기 때문에 기존에 생각하신 반려동물이 제대로 추천되지 않았을수도 있습니다.")
                    .fixedSize(horizontal: false, vertical: true)
                
            }.padding()
            
        }
        .padding(.all)
    }
}


struct WhyModalView_Previews: PreviewProvider {
    static var previews: some View {
        WhyModalView()
    }
}
