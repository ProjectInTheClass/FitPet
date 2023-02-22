//
//  AnimalEncyclopedia.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

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
