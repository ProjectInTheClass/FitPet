//
//  ResultExample.swift
//  project
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

struct ResultExample: View {
    var data: [PetShape] = [
        .init(type: "A", count: 10),
        .init(type: "B", count: 8),
        .init(type: "C", count: 11),
    ]
    var data2: [PetShape] = [
        .init(type: "C", count: 5),
        .init(type: "D", count: 4),
        .init(type: "E", count: 4),
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
        }
       
    }
}
struct ResultExample_Previews: PreviewProvider {
    static var previews: some View {
        ResultExample()
    }
}
