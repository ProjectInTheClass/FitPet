//
//  AnimalDetailView.swift
//  project
//
//  Created by 백대홍 on 2023/02/21.
//

import SwiftUI

struct AnimalDetailView: View {
    var animal: Animal

    var body: some View {
        ScrollView {
                VStack(spacing:20){
                    Image(animal.image)
                    
                    VStack(alignment:.leading, spacing:20){
                        HStack{
                            Text(animal.title)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            
                            Spacer()
                        }
                        Text(animal.headline)
                            .font(.headline)
                        
                        Text("Learn more about \(animal.title)".uppercased())
                            .fontWeight(.bold)
                        
                        Text(animal.description)
                        
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.top, 100)
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetailView(animal: Animal(title: "강아지", headline: "식육목 고양이과의 포유류.\n생물종 분류로는 고양이과에 속하며 사자, 표범, 재규어와 근연속", image: "강아지", description: "기본 정보: 개의 학명은 다음과 같습니다. Canis lupus familiaris. 개는 Canidae 가족에 속하며 늑대의 후손입니다. 그들은 일반적으로 길들여진 동물이며 다양한 품종이 있으며 각각 고유한 신체적 특징과 기질을 가지고 있습니다. 행동 특성: 개는 사회적 동물이며 인간과의 상호 작용을 통해 번성합니다. 그들은 본질적으로 짐을 싣는 동물이며 종종 주인이나 집안의 다른 개와 긴밀한 유대를 형성합니다. 개는 명령을 따르고 장애가 있는 사람을 돕거나 법 집행 기관 또는 군용 동물로 일하는 것과 같은 작업을 수행하도록 훈련받을 수 있습니다. 식이 및 영양: 개는 잡식성이며 먹을 수 있습니다. 육류, 야채, 곡물을 포함한 다양한 식품. 그들의 식단은 균형을 이루어야 하며 단백질, 탄수화물, 지방, 비타민 및 미네랄이 혼합되어 있어야 합니다. 일부 개는 특정한 식이 요구 사항이나 제한 사항이 있으므로 적절한 영양 섭취를 위해 수의사와 상담하는 것이 중요합니다. 라이프 사이클: 개의 임신 기간은 약 63일입니다. . 강아지는 눈이 멀고 귀가 들리지 않는 상태로 태어나 어미에게 영양분과 따뜻함을 의존합니다. 일반적으로 생후 4주 정도에 단단한 음식을 먹기 시작하고 6주에서 8주가 되면 젖을 뗍니다. 개는 약 6~12개월에 성적으로 성숙하며 품종과 크기에 따라 최대 20년까지 살 수 있습니다. 위협 및 보호 상태: 개는 개로 간주되지 않습니다. 위협을 받거나 멸종 위기에 처한 종이지만 일부 품종은 건강 문제나 유전적 장애의 위험에 처할 수 있습니다. 또한 개는 파보바이러스, 광견병, 심장사상충과 같은 질병에 걸리기 쉬울 수 있으며 적절한 예방접종과 정기적인 수의사 진료를 통해 예방할 수 있습니다. 재미있는 사실: 개 사냥, 목축, 보호, 동반자 관계를 포함하여 역사 전반에 걸쳐 다양한 작업에 사용되었습니다. 기록상 가장 키가 큰 개는 어깨 높이가 44인치인 제우스라는 이름의 그레이트 데인이었습니다. 개는 놀라운 후각을 가지고 있으며 마약, 폭발물, 심지어 암을 감지하는 데 사용되었습니다. Basenji와 같은 일부 개는 짖지 않고 대신 독특한 요들 소리를 냅니다."))
    }
}
