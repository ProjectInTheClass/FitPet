//
//  MainPage.swift
//  PetFollow
//
//  Created by mnzdrm on 2023/02/20.
//

import SwiftUI

struct MainPage: View {
    @State private var back: Bool = false
    @AppStorage("_Firstrun") var Firstrun: Bool = true
    @State var ShowOnboarding: Bool = true
    var body: some View {
        NavigationView() {
            VStack {
                Spacer().frame(height: 50)
                Image(systemName: "pawprint.fill")
                    .foregroundColor(.orange)
                    .font(.system(size: 50))
                Spacer().frame(height: 25)
                Text("반려동물과 함께 일상을 공유하다").multilineTextAlignment(.center).font(.largeTitle).bold()
                Spacer().frame(height: 75)
                HStack{
                    Spacer().frame(width: 25)
                    NavigationLink(destination: QnA().font(.largeTitle).navigationBarHidden(true)) {
                        Text("반려동물 자격요건")
                            .font(.title)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .bold()
                            .background(Color.orange)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                    }
                    Spacer().frame(width: 25)
                    NavigationLink(destination: QnA().font(.largeTitle)) {
                        Text("반려동물 추천받기")
                            .font(.title)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .bold()
                            .background(Color.orange)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                    }
                    Spacer().frame(width: 25)
                }
                Spacer().frame(height: 25)
                HStack{
                    Spacer().frame(width: 25)
                    NavigationLink(destination: Animal_Web()) {
                        Text("반려동물 백과사전")
                            .font(.title)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .bold()
                            .background(Color.orange)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                    }
                    Spacer().frame(width: 25)
                    NavigationLink(destination: QnA().font(.largeTitle)) {
                        Text("asdaksdasdk;asdlk")
                            .font(.title)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .bold()
                            .background(Color.orange)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                    }
                    Spacer().frame(width: 25)
                }
            }
            Spacer().frame(height: 50)
        }
        .fullScreenCover(isPresented: $Firstrun) {
            OnboardingMainView(ShowOnboarding: $Firstrun)
        }
    }
       
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
