//
//  ResultExample.swift
//  project
//
//  Created by 백대홍 on 2023/02/27.
//

import SwiftUI
import Charts
import SwiftUICharts
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
enum Taste: String {
    case Best
    case Worst
}

struct ResultExample: View {
    var data: [PetShape] = [
        .init(type: bestPet[0].key, count: Double(bestPet[0].value)),
        .init(type: bestPet[1].key, count: Double(bestPet[1].value)),
        .init(type: bestPet[2].key, count: Double(bestPet[2].value)),
    ]
    var data2: [PetShape] = [
        .init(type: bestPet[dict.count-1].key, count: Double(bestPet[dict.count-1].value)),
        .init(type: bestPet[dict.count-2].key, count: Double(bestPet[dict.count-2].value)),
        .init(type: bestPet[dict.count-3].key, count: Double(bestPet[dict.count-3].value)),
    ]
    @State var taste: Taste = .Best
    
    var selectedData: [PetShape] {
        switch taste {
        case .Best:
            return data
        case .Worst:
            return data2
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker("Taste", selection: $taste.animation(.easeInOut)) {
                Text(Taste.Best.rawValue).tag(Taste.Best)
                Text(Taste.Worst.rawValue).tag(Taste.Worst)
            }
            .pickerStyle(.segmented)
            
            Chart {
                ForEach(selectedData) { shape in
                    BarMark(
                        x: .value("Total Count", shape.type),
                        y: .value("Shape Type", shape.count)
                    )
                }
            }
            .navigationTitle("자세히 보기")
        }
      
        .padding()
    }
}


struct ResultExample_Previews: PreviewProvider {
    static var previews: some View {
        ResultExample()
    }
}
