import SwiftUI

struct MainPage: View {
    @AppStorage("_Firstrun") var Firstrun: Bool = true
    @State var ShowOnboarding: Bool = true
    var logoSize: CGFloat = 300
    
    var body: some View {
        NavigationStack {
            Spacer().frame(height: 5)
            VStack {
                //Image(systemName: "pawprint.fill")
                Image("앱로고")
                    .resizable()
                    .frame(width: logoSize, height: logoSize)
                Text("\"반려동물과 함께 일상을 공유하다.\"")
                Spacer().frame(height: 100)
                
                NavigationLink(destination: QualificationTest()) {
                    Text("반려동물 상식퀴즈") //반려동물 자격 요건 검사, 사전 지식 퀴즈, 자가 진단 퀴즈
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.black)
                        .background(Color.ResultColor)
                        .cornerRadius(10)
                }.padding(.horizontal)
                NavigationLink(destination: FitPetTest()) {
                    Text("반려동물 추천받기")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.black)
                        .background(Color.ResultColor)
                        .cornerRadius(10)
                }.padding(.horizontal)
                NavigationLink(destination: Animal_Web()) {
                    Text("반려동물 백과사전")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.black)
                        .background(Color.ResultColor)
                        .cornerRadius(10)
                }.padding(.horizontal)
                Spacer().frame(height: 50)
            }
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
