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
                        
                        Text("이 운세 보기 기능은 어떠한 근거를 두고 있지 않습니다. 가볍게 재미로 보는 운세이니 이점 참고 하여 이용하시면 좋을것 같습니다.")
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Divider()
                        
                            Text("사용법")
                                .bold()
                            Text("키우고 있는 반려동물의 생년월일을 입력해주세요.")
                                .multilineTextAlignment(.leading)
                            Text("하단의 운세 보기 버튼을 터치하여 운세를 확인 해보세요.")
                                .multilineTextAlignment(.leading)
                                .fixedSize(horizontal: false, vertical: true)
                            Text("각각의 운세 목록을 스크롤을 통해 자세한 사항을 확인 해주세요.")
                                .multilineTextAlignment(.leading)
                                .fixedSize(horizontal: false, vertical: true)
                        
                    }
                    .padding(.all)
                   
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
