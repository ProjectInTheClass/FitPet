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
    var body: some View {
        TabView {
            OnboardingPage1(ShowOnboarding: $ShowOnboarding,showsDismissButton: false)
            
            OnboardingPage2(ShowOnboarding: $ShowOnboarding,showsDismissButton: false)
                
            OnboardingPage3(ShowOnboarding: $ShowOnboarding,showsDismissButton: false)
            
            OnboardingPage4(ShowOnboarding: $ShowOnboarding,showsDismissButton: true)

        }
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
    }
}

struct OnboardingMainView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingMainView(ShowOnboarding: .constant(true))
    }
}
