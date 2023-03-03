//
//  Animal& Web.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct Animal_Web: View {
    @State private var showHelpModal = false
    var body: some View {
        NavigationStack {
            Text("키우고 싶은 동물을 찾으셨나요?")
                .font(.title.bold())
                .padding(.horizontal)
            Text("이제 더 알아 볼 시간 입니다. 동물 백과 사전과 추천 사이트를 통해 결과에서 확인한 동물에 대해 더 공부해보세요.")
                .padding()
            Image("onboarding4")
                .resizable()
                .frame(width: 200, height: 200)
            
            NavigationLink(destination: AnimalEncyclopedia()) {
                Text("동물 백과 사전")
                    .font(.headline).bold()
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(10)
            }
            .padding()
            
            NavigationLink(destination: RecommendedSites()) {
                Text("추천 사이트")
                    .font(.headline).bold()
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(10)
            }
            .padding()
            .navigationTitle("더 알아보기")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showHelpModal = true
                    }, label: {
                        Image(systemName: "questionmark.circle.fill")
                            .foregroundColor(.black)
                    })
                }
            }
            .sheet(isPresented: $showHelpModal) {
                HelpModalView()
            }
        }
    }
}

struct HelpModalView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("도움이 필요하신가요?")
                .font(.largeTitle)
                .fontWeight(.bold)
            VStack(alignment: .center) {
                Image(systemName: "questionmark.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.yellow)
                    .padding()
                Text("동물 백과 사전에서는 결과에서 식별한 동물뿐만 아니라 다양한 동물에 대한 자세한 정보가 표시됩니다. 여러분은 동물의 기본적인 정보, 행동 특성, 식단과 영양 관리, 그리고 수명 주기에 대해 배울 수 있습니다.")
                    .fixedSize(horizontal: false, vertical: true)
            }
            
            Spacer()
            VStack(alignment: .center) {
                Image(systemName:"person.2.wave.2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                Text("만약 실제 동물을 키우기 위한 더 많은 정보가 필요하시다면 아래 추천 사이트 페이지에서 다양한 동물에 대한 다양한 YouTube 자료와 이미 동물을 키우고 있는 사람들과 소통 할 수 있는 카페에 가입해보세요! ")
                    .fixedSize(horizontal: false, vertical: true)
                
                Image("recommended_sites")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
            }
            
        }
        .padding()
    }
}


struct Animal_Web_Previews: PreviewProvider {
    static var previews: some View {
        Animal_Web()
    }
}
