//
//  ResultExample.swift
//  project
//
//  Created by 백대홍 on 2023/02/27.
//

import SwiftUI
import Charts

struct PetRecommendationView: View {
    var preferredPet: String
    
    var body: some View {
        Text("당신의 답변을 토대로 추천하는 동물은 \(preferredPet)!")
            .padding()
        if preferredPet == "dog" {
            Image("강아지")
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}

struct PetShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}

struct ResultExample: View {
    var data: [PetShape] = [
        .init(type: bestPet[0].key, count: Double(bestPet[0].value)),
        .init(type: bestPet[1].key, count: Double(bestPet[1].value)),
        .init(type: bestPet[2].key, count: Double(bestPet[2].value)),
    ]
    var data2: [PetShape] = [
        .init(type: bestPet[Dnum-1].key, count: Double(bestPet[Dnum-1].value)),
        .init(type: bestPet[Dnum-2].key, count: Double(bestPet[Dnum-2].value)),
        .init(type: bestPet[Dnum-3].key, count: Double(bestPet[Dnum-3].value)),
    ]
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Best 3")
                .bold()
            Chart {
                ForEach(data) { shape in
                    BarMark(
                        x: .value("Shape Type", shape.count),
                        y: .value("Total Count", shape.type)
                    )
                }
            }
            Text("Worst 3")
                .bold()
            Chart {
                ForEach(data2) { shape in
                    BarMark(
                        x: .value("Shape Type", shape.count),
                        y: .value("Total Count", shape.type)
                    )
                }
            }
        }.padding()
       
    }
}
struct ResultExample_Previews: PreviewProvider {
    static var previews: some View {
        ResultExample()
    }
}
