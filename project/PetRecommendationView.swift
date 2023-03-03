//
//  PetRecommendationView.swift
//  project
//
//  Created by 백대홍 on 2023/03/04.
//

import SwiftUI

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
        Button(action: sharePreferredPet) {
            Image(systemName: "square.and.arrow.up")
        }
    }
    
    
    func sharePreferredPet() {
        let message = "I recommend a \(preferredPet) as a pet based on my answers."
        let activityViewController = UIActivityViewController(activityItems: [message], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityViewController, animated: true, completion: nil)
    }
}

