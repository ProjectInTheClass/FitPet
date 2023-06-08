//
//  WhyFortuneModalView.swift
//  FitPet
//
//  Created by 백대홍 on 2023/06/08.
//

import SwiftUI

struct WhyFortuneModalView: View {
    @Binding var showFortuneModal : Bool
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WhyFortuneModalView_Previews: PreviewProvider {
    static var previews: some View {
        let showFortuneModal = Binding.constant(true)
        return WhyFortuneModalView(showFortuneModal: showFortuneModal)
    }
}
