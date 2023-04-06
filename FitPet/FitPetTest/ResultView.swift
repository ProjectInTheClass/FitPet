//
//  ResultExample.swift
//  FitPet
//
//  Created by 백대홍 on 2023/02/27.
//

import SwiftUI
import Charts

struct PetShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}

enum Taste: String {
    case Best
    case Worst
}

struct ResultView: View {
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
        VStack(alignment: .center) {
            Spacer().frame(height: 50)
            Section {
                Picker("Taste", selection: $taste.animation(.easeInOut)) {
                    Text(Taste.Best.rawValue).tag(Taste.Best)
                    Text(Taste.Worst.rawValue).tag(Taste.Worst)
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                Chart {
                    ForEach(selectedData) { shape in
                        LineMark(
                            x: .value("Total Count", shape.type),
                            y: .value("Shape Type", shape.count)
                        )
                        .interpolationMethod(.cardinal)
                        .foregroundStyle(taste == .Best ? .blue : .red)
                        PointMark(x: .value("Total Count", shape.type), y: .value("Shape Type", shape.count))
                            .symbol(.diamond)
                            .annotation { Text("\(Int(shape.count))") }
                            .foregroundStyle(taste == .Best ? .blue : .red)
                    }
                }
                .frame(height: 300)
                .padding()
            }
            Spacer().frame(height: 100)
            Section {
                if taste == .Best {
                    HStack  {
                        Text("\(bestPet[0].key)")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 15)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[0].value) 점")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.blue.opacity(0.9))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                    HStack  {
                        Text("\(bestPet[1].key)")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 15)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[1].value) 점")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.blue.opacity(0.7))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                    HStack  {
                        Text("\(bestPet[2].key)")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 15)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[2].value) 점")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.blue.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                } else {
                    HStack  {
                        Text("\(bestPet[dict.count-1].key)")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 15)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[dict.count-1].value) 점")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.red.opacity(0.9))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                    HStack  {
                        Text("\(bestPet[dict.count-2].key)")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 15)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[dict.count-2].value) 점")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.red.opacity(0.7))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                    HStack  {
                        Text("\(bestPet[dict.count-3].key)")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 15)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[dict.count-3].value) 점")
                            .bold().frame(width: 60)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.red.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                }
            }
            .multilineTextAlignment(.center)
            Spacer().frame(height: 100)
                .navigationTitle(taste == .Best ? "최고의 궁합" : "좋지 않은 궁합")
        }
    }
}

struct ResultExample_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}

// 점수가 왜 그렇게 나왔는지에 대한 설명? 각 문제당 몇점이 나왔는지가 궁금하다. (미해결)
// 100점 이상 나온 동물에 대해서는 결과에서 제대로 보여주지 않는다. 예를 들면 강아지가 125점이면 정상적으로 출력되지 않고 100점 부터 결과 출력되는 문제.
