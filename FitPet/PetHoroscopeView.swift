//
//  PetHoroscopeView.swift
//  FitPet
//
//  Created by 백대홍 on 2023/05/22.
//
import SwiftUI

struct PetHoroscopeView: View {
    // 사용자와 반려동물의 생년월일을 저장하는 변수
    @State var userBirthDate = Date()
    @State var petBirthDate = Date()
    
    // 운세 값을 저장하고 업데이트하는 변수
    @State var horoscope = ""
    
    // 사용자와 반려동물의 별자리나 띠를 계산하는 함수
    func getZodiac(date: Date) -> String {
        // 날짜 형식을 월과 일로 변환
        let formatter = DateFormatter()
        formatter.dateFormat = "MMdd"
        let dateString = formatter.string(from: date)
        
        // 월과 일에 따라 별자리나 띠를 반환
        switch dateString {
        case "0101"..."0119":
            return "염소자리"
        case "0120"..."0218":
            return "물병자리"
        case "0219"..."0320":
            return "물고기자리"
        case "0321"..."0419":
            return "양자리"
        case "0420"..."0520":
            return "황소자리"
        case "0521"..."0621":
            return "쌍둥이자리"
        case "0622"..."0722":
            return "게자리"
        case "0723"..."0822":
            return "사자자리"
        case "0823"..."0922":
            return "처녀자리"
        case "0923"..."1023":
            return "천칭자리"
        case "1024"..."1122":
            return "전갈자리"
        case "1123"..."1221":
            return "사수자리"
        default:
            return "염소자리"
        }
    }
    
    // 사용자와 반려동물의 운세를 계산하고 표현하는 함수
    func getHoroscope(userZodiac: String, petZodiac: String) -> String {
        // 사용자와 반려동물의 별자리나 띠가 같으면
        if userZodiac == petZodiac {
            // 성격이 비슷하다는 것을 분석하고, 운세를 다양하게 표현
            switch userZodiac {
            case "염소자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 신중하고 책임감이 강합니다. 오늘은 계획적으로 행동하면 좋은 결과가 있을 것입니다. 건강과 재운도 좋습니다."
            case "물병자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 독창적이고 자유로운 영혼입니다. 오늘은 새로운 아이디어나 발상을 펼쳐보세요. 사랑운과 재운도 좋습니다."
            case "물고기자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 상냥하고 이해심이 많습니다. 오늘은 서로에게 따뜻한 마음을 전해보세요. 건강과 사랑운도 좋습니다."
            case "양자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 활발하고 리더십이 강합니다. 오늘은 적극적으로 도전하고 성취해보세요. 재운과 사랑운도 좋습니다."
            case "황소자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 안정적이고 현실적입니다. 오늘은 편안하고 안락한 분위기를 즐기세요. 건강과 재운도 좋습니다."
            case "쌍둥이자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 호기심이 많고 유쾌합니다. 오늘은 다양한 정보와 지식을 얻을 수 있습니다. 사랑운과 재운도 좋습니다."
            case "게자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 성실하고 보수적입니다. 오늘은 꾸준히 노력하면 좋은 결과가 있을 것입니다. 건강과 재운도 좋습니다."
            case "사자자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 자신감이 있고 카리스마가 있습니다. 오늘은 많은 사람들의 관심과 칭찬을 받을 수 있습니다. 사랑운과 재운도 좋습니다."
            case "처녀자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 꼼꼼하고 성실합니다. 오늘은 작은 실수에도 주의하세요. 건강과 사랑운도 좋습니다."
            case "천칭자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 예술적이고 세련됩니다. 오늘은 아름다운 것들에 눈길을 주세요. 사랑운과 재운도 좋습니다."
            case "전갈자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 열정적이고 진실한 마음을 가지고 있습니다. 오늘은 감정을 솔직하게 표현하세요. 사랑운과 건강도 좋습니다."
            case "사수자리":
                return "\(userZodiac)와 \(petZodiac)는 모두 모험적이고 낙천적입니다. 오늘은 새로운 장소나 활동에 도전해보세요. 건강과 재운도 좋습니다."
            default:
                return ""
            }
            
        } else {
            // 성격이 다르다는 것을 분석하고, 운세를 다양하게 표현
            switch (userZodiac, petZodiac) {
            case ("염소자리", _), (_, "염소자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 염소자리는 신중하고 책임감이 강하지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로의 차이점을 인정하고 배려하면서 지내세요. 사랑운은 보통이지만 재운은 나쁩니다."
            case ("물병자리", _), (_, "물병자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 물병자리는 독창적이고 자유로운 영혼이지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로의 개성을 존중하고 지지해주면서 지내세요. 사랑운은 보통이지만 건강은 나쁩니다."
            case ("물고기자리", _), (_, "물고기자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 물고기자리는 상냥하고 이해심이 많지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로에게 따뜻한 마음을 전해주면서 지내세요. 사랑운과 건강은 좋지만 재운은 나쁩니다."
            case ("양자리", _), (_, "양자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 양자리는 활발하고 리더십이 강하지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로에게 적당한 공간과 자유를 주면서 지내세요. 사랑운과 건강은 좋지만 재운은 나쁩니다."
            case ("황소자리", _), (_, "황소자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 황소자리는 안정적이고 현실적이지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로의 의견과 취향을 존중하면서 지내세요. 사랑운과 재운은 보통입니다."
            case ("쌍둥이자리", _), (_, "쌍둥이자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 쌍둥이자리는 호기심이 많고 유쾌하지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로에게 재미있는 이야기나 정보를 공유하면서 지내세요. 사랑운과 건강은 좋지만 재운은 나쁩니다."
            case ("게자리", _), (_, "게자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 게자리는 성실하고 보수적이지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로의 안전과 편안함을 위해 노력하면서 지내세요. 사랑운과 재운은 보통입니다."
            case ("사자자리", _), (_, "사자자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 사자자리는 자신감이 있고 카리스마가 있지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로에게 칭찬과 격려를 해주면서 지내세요. 사랑운과 건강은 좋지만 재운은 나쁩니다."
            case ("처녀자리", _), (_, "처녀자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 처녀자리는 꼼꼼하고 성실하지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로의 실수나 결점을 너그럽게 용납해주면서 지내세요. 사랑운과 재운은 보통입니다."
            case ("천칭자리", _), (_, "천칭자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 천칭자리는 예술적이고 세련되지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로의 감성과 취향을 공유하면서 지내세요. 사랑운과 건강은 좋지만 재운은 나쁩니다."
            case ("전갈자리", _), (_, "전갈자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 전갈자리는 열정적이고 진실한 마음을 가지고 있지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로의 감정을 잘 표현하고 이해해주면서 지내세요. 사랑운과 재운은 좋지만 건강은 나쁩니다."
            case ("사수자리", _), (_, "사수자리"):
                return "\(userZodiac)와 \(petZodiac)는 서로 다른 성향을 가지고 있습니다. 사수자리는 모험적이고 낙천적이지만 다른 별자리는 그렇지 않을 수 있습니다. 오늘은 서로의 새로운 경험과 지식을 존중하고 배우면서 지내세요. 사랑운과 건강은 좋지만 재운은 나쁩니다."
            default:
                return "알 수 없는 별자리입니다."
            }
            
            // 운세 값을 업데이트하는 함수
            func updateHoroscope() {
                // 사용자와 반려동물의 별자리나 띠를 계산
                let userZodiac = getZodiac(date: userBirthDate)
                let petZodiac = getZodiac(date: petBirthDate)
                
                // 사용자와 반려동물의 운세를 계산하고 표현
                horoscope = getHoroscope(userZodiac: userZodiac, petZodiac: petZodiac)
            }
        }
    }
    
    
    var body: some View {
        VStack {
            Text("반려동물 운세")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Text("사용자 생년월일")
                DatePicker("", selection: $userBirthDate, displayedComponents: .date)
                    .labelsHidden()
                    .datePickerStyle(WheelDatePickerStyle())
                    .frame(width: 200)
            }
            
            HStack {
                Text("반려동물 생년월일")
                DatePicker("", selection: $petBirthDate, displayedComponents: .date)
                    .labelsHidden()
                    .datePickerStyle(WheelDatePickerStyle())
                    .frame(width: 200)
            }
            
            Button(action: {
                // 버튼을 누르면 운세를 계산하고 화면에 보여준다
                let userZodiac = getZodiac(date: userBirthDate)
                let petZodiac = getZodiac(date: petBirthDate)
                horoscope = getHoroscope(userZodiac: userZodiac, petZodiac: petZodiac)
                
            }, label: {
                Text("운세 보기")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                
            })
            
            // 운세 값을 화면에 보여주는 뷰
            Text(horoscope)
                .font(.headline)
                .padding()
            
        }
    }
}

struct PetHoroscopeView_Previews: PreviewProvider {
    static var previews: some View {
        PetHoroscopeView()
    }
}
