//
//  AnimalEncyclopedia.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct AnimalList: View {
    var animal: Animal
    
    var body: some View {
        HStack{
            Image (animal.image)
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
    }
}

struct AnimalEncyclopedia: View {
    var animals : [Animal] = animalsData
    var body: some View {
        NavigationStack {
            List(animals){ animal in
                NavigationLink(destination: AnimalDetailView(animal: animal)){
                    AnimalList(animal: animal)
                }
            }
            .navigationBarTitle("Animals")
        }
    }
}

struct AnimalEncyclopedia_Previews: PreviewProvider {
    static var previews: some View {
        AnimalEncyclopedia()
    }
}
