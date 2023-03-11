//
//  HelpModalView.swift
//  project
//
//  Created by 백대홍 on 2023/03/09.
//

import SwiftUI

struct HelpModalView: View {
    @Binding var showHelpModal : Bool
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                Spacer().frame(height: 25)
                Text("도움이 필요하신가요?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                Spacer().frame(height: 0)
                VStack(alignment: .center) {
                    Image(systemName: "questionmark.circle.fill")
                        .resizable()
                        .frame(width: 75, height: 75)
                        .foregroundColor(.yellow)
                        .padding()
                    Text("반려동물 백과사전에서는 결과에서 식별한 동물뿐만 아니라 다양한 동물에 대한 자세한 정보가 표시됩니다. 여러분은 동물의 기본적인 정보, 행동 특성, 식단과 영양 관리, 그리고 수명 주기에 대해 배울 수 있습니다.")
                        .fixedSize(horizontal: false, vertical: true)
                }
                VStack(alignment: .center) {
                    Image(systemName:"person.2.wave.2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 90)
                        .padding()
                    Text("만약 실제 동물을 키우기 위한 더 많은 정보가 필요하시다면 아래 추천 사이트 페이지에서 다양한 동물에 대한 YouTube 자료와 이미 동물을 키우고 있는 사람들과 소통할 수 있는 카페에 가입해 보세요!")
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer().frame(height: 100)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                showHelpModal = false
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
