//
//  FortuneView.swift
//  FitPet
//
//  Created by 백대홍 on 2023/05/23.
//
import SwiftUI

struct FortuneView: View {
    // 반려동물의 생년월일을 입력받는 데이트픽커
    @State private var birthday = Date() // 날짜 타입의 상태 변수
    // 운세 메시지를 저장하는 변수들
    @State private var totalFortune = "" // 총운
    @State private var loveFortune = "" // 애정운
    @State private var healthFortune = "" // 건강운
    @State private var moneyFortune = "" // 재운
    @State private var luckFortune = "" // 행운
    
    // 총운 메시지의 배열
    let totalMessages = [
        "기대충만",
        "평범한 하루",
        "좋은 일이 생길 날",
        "조심스러워야 할 날",
        "변화의 기회가 찾아올 날"
    ]
    
    // 애정운 메시지의 배열
    let loveMessages = [
        "오늘은 애정운이 좋습니다. 반려동물과 함께 즐거운 시간을 보내세요.",
        "오늘은 애정운이 나쁩니다. 반려동물과 다투지 않도록 조심하세요.",
        "오늘은 애정운이 보통입니다. 반려동물과 평화롭게 지내세요.",
        "오늘은 애정운이 매우 좋습니다. 반려동물에게 많이 애정 표현을 해주세요.",
        "오늘은 애정운이 변화무쌍합니다. 반려동물의 기분에 따라 대처하세요."
    ]
    
    // 건강운 메시지의 배열
    let healthMessages = [
        "오늘은 건강운이 좋습니다. 반려동물과 함께 운동을 해보세요.",
        "오늘은 건강운이 나쁩니다. 반려동물에게 의사에게 검진을 받도록 하세요.",
        "오늘은 건강운이 보통입니다. 반려동물에게 적당한 휴식을 주세요.",
        "오늘은 건강운이 매우 좋습니다. 반려동물과 함께 산책을 하거나 놀아주세요.",
        "오늘은 건강운이 변화무쌍합니다. 반려동물의 컨디션에 따라 관리하세요."
    ]
    
    // 재운 메시지의 배열
    let moneyMessages = [
        "오늘은 재운이 좋습니다. 반려동물에게 좋은 간식을 사주세요.",
        "오늘은 재운이 나쁩니다. 반려동물에게 비싼 물건을 주지 마세요.",
        "오늘은 재운이 보통입니다. 반려동물에게 필요한 것만 구입하세요.",
        "오늘은 재운이 매우 좋습니다. 반려동물에게 로또 복권을 사주세요.",
        "오늘은 재운이 변화무쌍합니다. 반려동물에게 돈 관리를 잘 하도록 가르치세요."
    ]
    
    // 행운 메시지의 배열
    let luckMessages = [
        "오늘은 행운이 좋습니다. 반려동물과 함께 새로운 곳을 탐험해보세요.",
        "오늘은 행운이 나쁩니다. 반려동물과 함께 위험한 곳에 가지 마세요.",
        "오늘은 행운이 보통입니다. 반려동물과 함께 평소와 같은 일상을 보내세요.",
        "오늘은 행운이 매우 좋습니다. 반려동물과 함께 의외의 만남이 있을 수 있어요.",
        "오늘은 행운이 변화무쌍합니다. 반려동물과 함께 기분에 따라 움직이세요."
    ]
    
    var body: some View {
        VStack(alignment: .center) {
            // 데이트픽커와 버튼을 가로로 배치
            VStack(alignment: .center) {
                // 데이트픽커에 최대 날짜를 오늘로 설정하고 날짜 형식을 yyyyMMdd로 설정
                DatePicker("", selection: $birthday, in: ...Date(), displayedComponents: .date)
                    .datePickerStyle(.compact)
                // 버튼을 누르면 운세를 계산하는 함수를 호출
                Button("운세 보기") {
                    calculateFortune()
                }.frame(width: 100, height: 100)
            }
            // 운세 메시지를 텍스트로 보여줌
            Text("05월 23일의 운세")
                .font(.title)
            Text("총운: \(totalFortune)")
                .font(.headline)
            Text("애정운: \(loveFortune)")
                .font(.headline)
            Text("건강운: \(healthFortune)")
                .font(.headline)
            Text("재운: \(moneyFortune)")
                .font(.headline)
            Text("행운: \(luckFortune)")
                .font(.headline)
            
        }
        // 메뉴 막대에 운세 기능을 추가
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Menu {
                    Button("운세 보기") {
                        calculateFortune()
                    }
                    Button("초기화") {
                        reset()
                    }
                } label: {
                    Label("운세", systemImage: "star")
                }
            }
        }
    }
    
    // 운세를 계산하는 함수
    func calculateFortune() {
        // 현재 날짜를 문자열로 변환
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        let today = formatter.string(from: Date())
        
        // 반려동물의 생년월일도 문자열로 변환하고 숫자로 변환
        let number = Int(formatter.string(from: birthday))! // 문자열 -> 숫자
        
        // 현재 날짜와 반려동물의 생년월일을 더해서 새로운 숫자를 만듦
        let sum = number + Int(today)!
        
        // 새로운 숫자의 각 자리수를 더함
        var total = 0
        for digit in String(sum) {
            total += Int(String(digit))!
        }
        
        // 더한 숫자를 각 항목의 운 메시지의 개수로 나눈 나머지를 인덱스로 사용
        let totalIndex = total % totalMessages.count
        let loveIndex = total % loveMessages.count
        let healthIndex = total % healthMessages.count
        let moneyIndex = total % moneyMessages.count
        let luckIndex = total % luckMessages.count
        
        // 인덱스에 해당하는 운 메시지를 변수에 저장
        totalFortune = totalMessages[totalIndex]
        loveFortune = loveMessages[loveIndex]
        healthFortune = healthMessages[healthIndex]
        moneyFortune = moneyMessages[moneyIndex]
        luckFortune = luckMessages[luckIndex]
    }
    
    // 데이트픽커와 메시지를 초기화하는 함수
    
    func reset() {
        birthday = Date() // 데이트픽커의 값을 오늘 날짜로 설정
        totalFortune = "" // 총운 메시지를 빈 문자열로 설정
        loveFortune = "" // 애정운 메시지를 빈 문자열로 설정
        healthFortune = "" // 건강운 메시지를 빈 문자열로 설정
        moneyFortune = "" // 재운 메시지를 빈 문자열로 설정
        luckFortune = "" // 행운 메시지를 빈 문자열로 설정
    }

}

struct FortuneView_Previews: PreviewProvider {
    static var previews: some View {
        FortuneView()
    }
}
