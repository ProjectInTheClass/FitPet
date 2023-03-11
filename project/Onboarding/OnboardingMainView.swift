//
//  OnboardingView.swift
//  Netfulix Clone
//
//  Created by 백대홍 on 2023/02/13.
//
//MARK: - onboardingview
import SwiftUI

struct OnboardingMainView: View {
    @Binding var ShowOnboarding: Bool
    @AppStorage("_Firstrun") var Firstrun: Bool = true
    var body: some View {
        TabView {
            Onboarding_intro(ShowOnboarding: $ShowOnboarding,showsDismissButton: true)
            OnboardingPage1(ShowOnboarding: $ShowOnboarding,showsDismissButton: true)
            OnboardingPage2(ShowOnboarding: $ShowOnboarding,showsDismissButton: true)
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .ignoresSafeArea()
    }
}

struct OnboardingMainView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingMainView(ShowOnboarding: .constant(true))
    }
}
