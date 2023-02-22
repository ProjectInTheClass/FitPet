//
//  AnimalDetailView.swift
//  project
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
                    
                    VStack(alignment:.leading, spacing:20){
                        HStack{
                            Text(animal.title)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            
                            Spacer()
                        }
                        Text(animal.headline)
                            .font(.headline)
                        
                        Text("Learn more about \(animal.title)".uppercased())
                            .fontWeight(.bold)
                        
                        Text(animal.description)
                        
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.top, 100)
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}
