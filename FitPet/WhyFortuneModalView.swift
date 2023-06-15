//
//  WhyFortuneModalView.swift
//  FitPet
//
//  Created by 백대홍 on 2023/06/08.
//

import SwiftUI

struct WhyFortuneModalView: View {
    @Binding var showFortuneModal : Bool
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                Spacer().frame(height: 25)
              
              
                VStack(alignment: .center) {
                    Image("!")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                        .padding()
                    Spacer().frame(height: 50)
                    Text("과몰입 주의")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom)
                    Spacer().frame(height: 50)
                    VStack(alignment: .leading,spacing: 20) {
                        Text("가볍게 보는 운세이니 재미로만 생각해주세요!")
                            .bold()
                        
                        Text("이미 키우고 있는 반려동물이 있다면 반려동물의 생년월일을 입력해서 간단한 운세를 매일 확인해보세요.")
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Divider()
                        
                        Text("?")
                            .bold()
                        Text("다른 재미있는 테스트가 리뷰에서 작성해주시면 반영하겠습니다!")
                            .fixedSize(horizontal: false, vertical: true)
                    }
                   
                }
                Spacer().frame(height: 100)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                showFortuneModal = false
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

struct WhyFortuneModalView_Previews: PreviewProvider {
    static var previews: some View {
        let showFortuneModal = Binding.constant(true)
        return WhyFortuneModalView(showFortuneModal: showFortuneModal)
    }
}
