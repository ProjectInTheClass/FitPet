//
//  AnimalDetailView.swift
//  FitPet
//
//  Created by 백대홍 on 2023/02/21.
//

import SwiftUI

struct AnimalDetailView: View {
    var animal: Animal
    
    var body: some View {
        ScrollView {
            VStack(spacing:20){
                Image(animal.image)
                    .resizable()
                    .frame(width: .infinity, height: 200)
                VStack(alignment:.leading, spacing:20){
                    HStack{
                        Text(animal.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Spacer()
                        NavigationLink(
                            destination: RecommendedSites(selectedClassification: animal.recommandtype),
                            label: {
                                HStack {
                                    Image(systemName: "globe")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                    Text("추천 사이트").bold().foregroundColor(.blue)
                                }
                            })
                    }
                    VStack (alignment:.leading, spacing:20) {
                        Text(animal.headline)
                            .font(.headline)
                        Text("아래에서 \(animal.title)에 대해 더 알아보기")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.secondary)
                        Divider()
                        VStack (alignment:.leading, spacing:10) {
                            Text("• 기본적인 정보")
                                .bold()
                            Text(animal.description)
                            Divider()
                            Text("• 행동 특성")
                                .bold()
                            Text(animal.characteristics)
                        }
                        Divider()
                        VStack (alignment:.leading, spacing:10) {
                            Text("• 식이 및 영양 관리법")
                                .bold()
                            Text(animal.nutrition)
                        }
                        Divider()
                        VStack (alignment:.leading, spacing:20) {
                            Text("• 수명")
                                .bold()
                            Text(animal.lifecycle)
                        }
                        Divider()
                        VStack (alignment:.leading, spacing:20) {
                            Text("• \(animal.title)의 품종")
                                .bold()
                            ScrollView(.horizontal) {
                                HStack(spacing: 20) {
                                    ForEach(animal.species.indices, id: \.self) { index in
                                        VStack(spacing: 5) {
                                            Image(animal.speciesImage[index])
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100, height: 100)
                                            Text(animal.species[index])
                                                .font(.footnote)
                                                .multilineTextAlignment(.center)
                                        }
                                    }
                                }
                            }.padding(.bottom)
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
            .padding(.top, 100)
        }
        .edgesIgnoringSafeArea(.all)
    }
}
