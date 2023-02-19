//
//  RecommendedSites.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct RecommendedSites: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center ,spacing: 20) {
                Text("동물과 관련 카페 및 유튜브 링크입니다.")
                    .font(.title.bold())
                Text("원하시는 링크를 이용해서 더 많은 정보를 학습 해보세요.")
                    .font(.title3.bold())
            
            }
            Divider()
            VStack {
                Section {
                    List{
                        
                    }
                }
                
            }
            .padding()
            .navigationTitle("추천 사이트")
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

struct RecommendedSites_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedSites()
    }
}
