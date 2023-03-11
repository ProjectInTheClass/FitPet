//
//  Animal_Web.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct Animal_Web: View {
    @State private var showHelpModal = false
    var body: some View {
        NavigationStack {
            VStack {
                Spacer().frame(height: 25)
                Text("이제 공부할 시간입니다! \n다양한 정보를 통해 \n반려동물에 대해 학습해 보세요!")
                    .font(.title.bold())
                Text("어떻게 써야 할지 모르겠다면 상단의 ?를 눌러주세요!")
                    .foregroundColor(.secondary)
                    .padding(.vertical, 5)
                Spacer().frame(height: 25)
                Image("onboarding4")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.vertical, 10)
                Spacer().frame(height: 50)
                NavigationLink(destination: AnimalEncyclopedia()) {
                    Text("동물 백과사전")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                NavigationLink(destination: RecommendedSites()) {
                    Text("추천 사이트")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                Spacer().frame(height: 50)
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
                HelpModalView(showHelpModal: $showHelpModal)
            }
        }
    }
}

struct Animal_Web_Previews: PreviewProvider {
    static var previews: some View {
        Animal_Web()
    }
}
