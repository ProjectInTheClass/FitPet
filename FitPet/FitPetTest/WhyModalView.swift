//
//  WhyModalView.swift
//  FitPet
//
//  Created by 백대홍 on 2023/03/04.
//

import SwiftUI

struct WhyModalView: View {
    @Binding var showWhyModal : Bool
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                Spacer().frame(height: 25)
                Text("왜 이런 결과가 나왔나요?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                Spacer().frame(height: 0)
                VStack(alignment: .center) {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .resizable()
                        .frame(width: 75, height: 75)
                        .foregroundColor(.yellow)
                        .padding()
                    Text("검사 결과 중 가장 중요하게 다뤄지는 부분은 알레르기 반응입니다. 따라서 특정 동물에게 알레르기가 있다면 해당 동물은 결과에서 비교적 낮은 점수로 측정됩니다.")
                        .fixedSize(horizontal: false, vertical: true)
                }
                VStack(alignment: .center) {
                    Image(systemName:"chart.bar.doc.horizontal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 90)
                        .padding()
                    Text("알레르기뿐만 아니라 질문지에서 답변하신 내용을 토대로 점수를 부여하기 때문에, 기존 선호하시던 반려동물로 추천되지 않았을 수도 있습니다.")
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer().frame(height: 100)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                showWhyModal = false
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.black)
                            })
                        }
                    }
            }
            .padding()
        }
    }
}

struct WhyModalView_Previews: PreviewProvider {
    static var previews: some View {
        let showWhyModal = Binding.constant(true)
        return WhyModalView(showWhyModal: showWhyModal)
    }
}
