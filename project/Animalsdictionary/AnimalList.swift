//
//  AnimalList.swift
//  project
//
//  Created by 백대홍 on 2023/02/21.
//

import SwiftUI

struct AnimalList: View {
    var animal: Animal
    
    var body: some View {
        HStack{
            Image(animal.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:80, height: 80)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(animal.title)
                    .font(.title2)
                    .fontWeight(.bold)

                Text(animal.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                    .lineLimit(2)
            }
        }
        .padding(.vertical, 4)
    }
}
