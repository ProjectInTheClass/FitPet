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
        VStack(alignment: .center) {
            VStack {
                Picker("Taste", selection: $taste.animation(.easeInOut)) {
                    Text(Taste.Best.rawValue).tag(Taste.Best)
                    Text(Taste.Worst.rawValue).tag(Taste.Worst)
                }
                .pickerStyle(.segmented)
                
                Chart {
                    ForEach(selectedData) { shape in
                        LineMark(
                            x: .value("Total Count", shape.type),
                            y: .value("Shape Type", shape.count)
                            
                        )
                        .interpolationMethod(.cardinal)
                        .foregroundStyle( taste == .Best
                                          ? .blue
                                          : .red)
                        PointMark(x: .value("Total Count", shape.type), y: .value("Shape Type", shape.count))
                            .symbol(.diamond)
                            .annotation {
                                                Text("\(Int(shape.count))")
                                            }
                            .foregroundStyle( taste == .Best
                                              ? .blue
                                              : .red)
                        
                    }
                }
                .frame(height: 350)
                .padding(.top)
                
                Spacer().frame(height: 50)
            }
            VStack(alignment: .center) {
                if taste == .Best {
                    Text("최고의 궁합!")
                        .font(.title2).bold()
                    HStack  {
                        Text("\(bestPet[0].key)")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 30)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[0].value)점")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.blue.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                    HStack  {
                        Text("\(bestPet[1].key)")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 30)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[1].value)점")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.blue.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                    HStack  {
                        Text("\(bestPet[2].key)")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 30)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[2].value)점")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.blue.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                } else {
                    Text("좋지 않은 궁합...")
                        .font(.title2).bold()
                    HStack  {
                        Text("\(bestPet[dict.count-1].key)")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 30)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[dict.count-1].value)점")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.red.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                    HStack  {
                        Text("\(bestPet[dict.count-2].key)")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 30)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[dict.count-2].value)점")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.red.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                    HStack  {
                        Text("\(bestPet[dict.count-3].key)")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.trailing)
                        Text("|")
                            .bold().frame(width: 30)
                            .multilineTextAlignment(.center)
                        Text("\(bestPet[dict.count-3].value)점")
                            .bold().frame(width: 50)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.red.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                }
            }
            .padding()
        }
    }
}

struct ResultExample_Previews: PreviewProvider {
    static var previews: some View {
        ResultExample()
    }
}
