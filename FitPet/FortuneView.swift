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
    // 운세 메시지를 저장하는 변수
    @State private var message = ""
    
    // 운세 메시지의 배열
    let messages = [
        "오늘은 애정운이 좋습니다. 반려동물과 함께 즐거운 시간을 보내세요.",
        "오늘은 건강운이 좋습니다. 반려동물과 함께 운동을 해보세요.",
        "오늘은 재운이 좋습니다. 반려동물에게 좋은 간식을 사주세요.",
        "오늘은 행운이 좋습니다. 반려동물과 함께 새로운 곳을 탐험해보세요.",
        "오늘은 사랑운이 좋습니다. 반려동물에게 많이 애정 표현을 해주세요."
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
                }
            }
            // 운세 메시지를 텍스트로 보여줌
            Text(message)
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
        
        // 더한 숫자를 운세 메시지의 개수로 나눈 나머지를 인덱스로 사용
        let index = total % messages.count
        
        // 인덱스에 해당하는 운세 메시지를 변수에 저장
        message = messages[index]
    }
    
    // 데이트픽커와 메시지를 초기화하는 함수
    func reset() {
        birthday = Date()
        message = ""
    }
}

struct FortuneView_Previews: PreviewProvider {
    static var previews: some View {
        FortuneView()
    }
}
