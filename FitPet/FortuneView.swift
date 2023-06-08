//
//  FortuneView.swift
//  FitPet
//
//  Created by 백대홍 on 2023/05/23.
//
import SwiftUI

struct FortuneView: View {
    @State private var birthday = Date()
    @State private var Allexpanded: Bool =  false
    @State private var Loveexpanded: Bool = false
    @State private var Healthexpanded: Bool = false
    @State private var moneyexpanded: Bool = false
    @State private var luckepanded: Bool = false
    
    @State private var totalFortune = ""
    @State private var loveFortune = ""
    @State private var healthFortune = ""
    @State private var moneyFortune = ""
    @State private var luckFortune = ""
    @State private var showFortuneModal = false
    let totalMessages = [
        "좋은 일이 생길 날",
        "조심스러워야 할 날",
        "평범한 하루",
        "기대충만",
        "변화의 기회가 찾아올 날"
    ]
    
    let loveMessages = [
        "오늘은 애정운이 좋습니다. 반려동물과 함께 즐거운 시간을 보내세요. 어떤 활동을 해보시겠어요? 산책을 떠나거나 새로운 장난감을 준비해보세요. 그리고, 반려동물에게 애정을 더 깊이 전해보세요. 사랑한다는 말을 해보거나, 간식을 하나 더 주는 것도 좋은 방법입니다.",

        "오늘은 애정운이 좋지않습니다. 반려동물과 다투지 않도록 조심하세요. 만약 싸웠다면 먼저 사과해보세요. 그리고, 반려동물이 편안하게 있을 수 있는 공간을 만드는 것도 좋은 방법입니다. 조용한 방에서 쉬도록 하거나, 좋아하는 장난감으로 놀아주는 것도 좋은 방법입니다.",

        "오늘은 애정운이 보통입니다. 반려동물과 평화롭게 지내보세요. 하지만, 이번 기회에 새로운 기술을 익히거나 반려동물과 함께 새로운 경험을 해보는 것도 좋은 방법입니다. 예를 들어, 새로운 명령어를 가르쳐보거나, 새로운 장소를 탐험해보는 것도 좋은 방법입니다.",

        "오늘은 애정운이 매우 좋습니다. 반려동물에게 애정 표현을 많이 해주세요. 더 많이 뽀뽀하고, 더 많이 안아주고, 더 많이 산책해보세요. 그리고, 반려동물이 좋아하는 고기나 간식을 더 많이 주는 것도 좋은 방법입니다.",

        "오늘은 애정운이 변화무쌍합니다. 반려동물의 기분에 따라 대처해보세요. 만약 기분이 좋다면 함께 놀아주거나, 산책을 떠나보세요. 하지만, 기분이 나쁘다면 그저 조용하게 있어주는 것도 좋은 방법입니다. 그리고, 자신의 감정을 표현하는 것도 중요합니다. '미안해', '고마워', '사랑해' 같은 간단한 말 한마디가 반려동물의 마음을 편안하게 해줄 수 있습니다."
    ]
    
    let healthMessages = [
        "오늘은 건강운이 좋습니다. 반려동물과 함께 운동을 해보세요.",
        "오늘은 건강운이 좋지않습니다. 반려동물에게 의사에게 검진을 받도록 하세요.",
        "오늘은 건강운이 보통입니다. 반려동물에게 적당한 휴식을 주세요.",
        "오늘은 건강운이 매우 좋습니다. 반려동물과 함께 산책을 하거나 놀아주세요.",
        "오늘은 건강운이 변화무쌍합니다. 반려동물의 컨디션에 따라 관리하세요."
    ]
    
    let moneyMessages = [ //할지 안할지는 미지수 아직까지 행운의 컬러로 변경 될 수도.
        "오늘은 재물운이 좋습니다. 반려동물에게 좋은 간식을 사주세요.",
        "오늘은 재물운이 좋지않습니다. 반려동물에게 비싼 물건을 주지 마세요.",
        "오늘은 재물운이 보통입니다. 반려동물에게 필요한 것만 구입하세요.",
        "오늘은 재물운이 매우 좋습니다. 반려동물에게 로또 복권을 사주세요.",
        "오늘은 재물운이 변화무쌍합니다. 반려동물에게 돈 관리를 잘 하도록 가르치세요."
    ]
    
    let luckMessages = [
        "오늘은 행운이 좋습니다. 반려동물과 함께 새로운 곳을 탐험해보세요.",
        "오늘은 행운이 좋지않습니다. 반려동물과 함께 위험한 곳에 가지 마세요.",
        "오늘은 행운이 보통입니다. 반려동물과 함께 평소와 같은 일상을 보내세요.",
        "오늘은 행운이 매우 좋습니다. 반려동물과 함께 의외의 만남이 있을 수 있어요.",
        "오늘은 행운이 변화무쌍합니다. 반려동물과 함께 기분에 따라 움직이세요."
    ]
    
    @State private var isCalculated = false
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .center) {
                DatePicker("", selection: $birthday, in: ...Date(), displayedComponents: .date)
                    .datePickerStyle(.wheel)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.BarColor)
                Spacer().frame(height: 50)
                Button("운세 보기") {
                    calculateFortune()
                }
                .frame(width: 70, height: 50)
                .background(Color.MainColor)
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(Color.yellow, lineWidth: 5))
            }
            .padding(.all)
            
            Text("오늘의 운세").font(.title).bold()
            ScrollView {
                if isCalculated {
                    disclosureGroup(for: "총운", content: totalFortune,imageName: "sun.max.fill")
                    disclosureGroup(for: "애정운", content: loveFortune,imageName: "suit.heart.fill")
                    disclosureGroup(for: "건강운", content: healthFortune,imageName: "staroflife.fill")
                    disclosureGroup(for: "재물운", content: moneyFortune,imageName: "creditcard.fill")
                    disclosureGroup(for: "행운", content: luckFortune,imageName: "hare.fill")
                }
            }.frame(height: 200)
            .padding(.all)
            
            Button("다시 하기") {
                reset()
            }
            .frame(width: 100, height: 50)
            

        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    showFortuneModal = true
                }, label: {
                    Image(systemName: "questionmark.circle.fill")
                        .foregroundColor(.yellow)
                })
            }
        }
        .sheet(isPresented: $showFortuneModal) {
            WhyFortuneModalView(showFortuneModal: $showFortuneModal)
        }

    }
    
    func calculateFortune() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        let today = formatter.string(from: Date())
        
        let number = Int(formatter.string(from: birthday))!
        
        let sum = number + Int(today)!
        
        var total = 0
        for digit in String(sum) {
            total += Int(String(digit))!
        }
        
        let totalIndex = total % totalMessages.count
        let loveIndex = total % loveMessages.count
        let healthIndex = total % healthMessages.count
        let moneyIndex = total % moneyMessages.count
        let luckIndex = total % luckMessages.count
        
        totalFortune = totalMessages[totalIndex]
        loveFortune = loveMessages[loveIndex]
        healthFortune = healthMessages[healthIndex]
        moneyFortune = moneyMessages[moneyIndex]
        luckFortune = luckMessages[luckIndex]
        
        isCalculated = true
    }
    
    func reset() {
        birthday = Date()
        totalFortune = ""
        loveFortune = ""
        healthFortune = ""
        moneyFortune = ""
        luckFortune = ""
        isCalculated = false
    }
    
    private func disclosureGroup(for title: String, content: String, imageName: String) -> some View {
        DisclosureGroup(
            content: {
                VStack {
                    Text(content).font(.headline)

                }.padding(.all)
            },
            label: {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.MainColor)
                    Text(title).fontWeight(.bold)
                }
                
            }
        )
        .padding(.horizontal)
        .padding(.vertical, 5)
        .accentColor(.black)
        .cornerRadius(5)
    }


}

struct FortuneView_Previews: PreviewProvider {
    static var previews: some View {
        FortuneView()
    }
}


//달력 높이 줄이세요.
//
