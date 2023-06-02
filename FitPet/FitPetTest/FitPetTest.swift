import Swift
import SwiftUI

// 강아지 고슴도치 고양이 금붕어 도마뱀 새 토끼 햄스터
var dict: [String: Int] = ["강아지": defaultScore, "고양이": defaultScore, "금붕어": defaultScore, "도마뱀": defaultScore,  "새": defaultScore, "토끼": defaultScore, "햄스터": defaultScore]
let bestPet = dict.sorted { $0.1 > $1.1 }
let bestScore: Int = dict.values.max()!

var firstTest: Bool = true
var defaultScore: Int = 50
var score: Int = 5
var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

struct FitPetTest: View {
    var body: some View {
        NavigationStack {
            Text("나의 맞춤 동물을 알아볼까요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
                .padding()
            Spacer().frame(height: 350)
            NavigationLink(destination: test01()
                .navigationBarBackButtonHidden(true)) {
                    Text("알아보기")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                .padding()
                .simultaneousGesture(TapGesture().onEnded{
                    dict = ["강아지": defaultScore, "고양이": defaultScore, "금붕어": defaultScore, "도마뱀": defaultScore, "새": defaultScore, "토끼": defaultScore, "햄스터": defaultScore]
                })
            Spacer().frame(height: 50)
        }
    }
}



struct FitPetTest_Previews: PreviewProvider {
    static var previews: some View {
        FitPetTest()
    }
}
