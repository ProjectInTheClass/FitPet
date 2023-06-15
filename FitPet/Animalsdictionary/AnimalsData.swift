//
//  AnimalsData.swift
//  FitPet
//
//  Created by 백대홍 on 2023/02/17.
//

import SwiftUI

struct Animal: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var description: String
    var characteristics: String
    var nutrition: String
    var lifecycle: String
    var recommandtype: String
    var species: [String]
    var speciesImage: [String]
}

var animalsData: [Animal] = [
    Animal(
        title: "강아지",
        headline: "장난스럽고 사랑스러운",
        image: "강아지",
        description: "그들은 일반적으로 길들여진 동물이며 다양한 품종이 있으며 각각 고유한 신체적 특징과 기질을 가지고 있습니다.",
        characteristics: " 인간과의 상호 작용을 통해 번성하는 사회적 동물입니다. 종종 집안의 다른 개나 주인과 긴밀한 유대를 형성합니다.훈련을 통해 명령을 따르거나 법 집행 기관이나 군용 동물로 일하는 것과 같은 작업을 수행할 수 있습니다.",
        nutrition: "잡식성으로, 육류, 야채, 곡물 등 다양한 식품을 먹을 수 있습니다. 균형 잡힌 식단이 필요하며, 단백질, 탄수화물, 지방, 비타민, 미네랄이 함유되어야 합니다. 일부 개는 특정한 식이 요구 사항이나 제한 사항이 있으므로 수의사와 상담하는 것이 중요합니다.",
        lifecycle: "생후 4주 정도에 단단한 음식을 먹기 시작하고, 6주에서 8주가 되면 젖을 뗍니다. 최대 20년까지 살 수 있으며, 성적으로 성숙해지는 시기는 품종과 크기에 따라 다릅니다.",
        recommandtype: "포유류",
        species: ["레브라도 리트리버", "저먼 셰퍼드", "푸들", "불독", "비글", "웰시코기"],
        speciesImage: ["리트리버", "셰퍼드", "푸들", "불독","비글","웰시코기" ]
    ),
    Animal(
        title: "고양이",
        headline: "신비롭고 우아한",
        image: "고양이",
        description: "고양이는 날카롭게 접을 수 있는 발톱과 유연한 몸을 가진 육식성 포유류입니다. 짧고 촘촘한 털을 가지고 있으며 다양한 색상과 패턴이 있습니다. 고양이의 평균 체중은 약 8-10파운드이지만 품종 및 개별 고양이에 따라 다를 수 있습니다.",
        characteristics: "고양이는 독립심과 냉담함으로 알려져 있지만 애정이 넘칠 수도 있습니다. 주인과 놀기 좋아합니다. 그들은 숙련된 사냥꾼이며 먹이를 모방한 장난감을 가지고 노는 것을 즐깁니다. 고양이는 일반적으로 밤에 활동하지만 낮에도 에너지가 폭발할 수 있습니다. 그루밍 습관으로도 잘 알려져 있으며 스스로 청소하는 데 상당한 시간을 소비합니다.",
        nutrition: "고양이는 절대 육식 동물이므로 단백질 함량이 높고 탄수화물 함량이 낮은 식단이 필요합니다. . 그들은 식단에 타우린, 비타민 A, 아라키돈산과 같은 필수 영양소가 필요합니다. 상업용 고양이 사료는 이러한 필수 영양소를 제공하도록 제조되었으며 건사료, 통조림 습식사료, 생식과 같은 다양한 형태로 제공됩니다.",
        lifecycle: "고양이는 일반적으로 약 12~15년 동안 삽니다. , 그러나 이것은 품종과 개별 고양이에 따라 다를 수 있습니다. 그들은 생후 약 6개월에 성적으로 성숙해지며 임신 기간은 약 63-65일입니다. 새끼 고양이는 눈과 귀가 닫힌 상태로 태어나며 영양과 보호를 위해 어미에게 의존합니다. 생후 3~4주 정도에 환경을 탐색하기 시작하고 보통 8~10주에 젖을 뗍니다.",
        recommandtype: "포유류",
        species: ["샴", "페르시안", "메인쿤", "뱅갈", "스핑크스"],
        speciesImage: ["샴", "페르시안", "메인쿤", "뱅갈", "스핑크스"]
    ),
    Animal(
        title: "금붕어",
        headline: "평화롭고 고요한",
        image: "금붕어",
        description: "금붕어는 일반적으로 수족관에서 애완용으로 기르는 작은 민물고기입니다. 그들은 둥근 배와 길쭉한 지느러미가 있는 독특한 체형을 가지고 있으며 일반적으로 주황색, 금색 또는 흰색입니다.",
        characteristics: "금붕어는 사회적 행동으로 알려져 있으며 시간이 지남에 따라 주인을 알아볼 수 있습니다. 활동적인 수영 선수이며 주변 탐색을 즐깁니다.",
        nutrition: "금붕어는 잡식성으로 식물과 동물 모두를 먹습니다. 그들의 식단은 고품질 상업용 어류 식품, 양상추 또는 완두콩과 같은 신선한 야채, 소금물 새우 또는 벌레와 같은 살아있는 또는 냉동 식품의 조합으로 구성되어야 합니다. 건강 문제를 일으킬 수 있으므로 금붕어를 너무 많이 먹이지 않는 것이 중요합니다.",
        lifecycle: "금붕어는 상대적으로 수명이 길며 적절한 관리를 받으면 최대 20년까지 살 수 있습니다. 그들은 약 1세에 성적으로 성숙하며 암컷은 한 번에 수백 개의 알을 낳을 수 있습니다. 금붕어 알은 일주일 안에 부화하며 치어는 적절한 먹이와 관리를 통해 빠르게 자랍니다.",
        recommandtype: "어류",
        species: ["팬테일", "화금", "오란다", "진주린", "툭눈"],
        speciesImage: ["팬테일", "화금", "오란다", "진주린", "툭눈"]
    ),
    Animal(
        title: "도마뱀",
        headline: "이국적인 매력",
        image: "도마뱀",
        description: "도마뱀은 비늘 모양의 피부, 네 개의 다리, 긴 꼬리를 가진 일종의 파충류입니다. 크기, 모양, 색상이 다양하며 길이가 몇 센티미터에서 몇 미터에 이르기까지 다양합니다.",
        characteristics: "도마뱀은 냉혈동물이므로 외부 환경에 의존합니다. 체온을 조절하는 열. 일부 종은 밤에 활동하지만(야행성) 일반적으로 낮(주간)에 더 활동적입니다. 많은 도마뱀은 또한 잘 오르며 나무나 기타 구조물을 쉽게 오를 수 있습니다.",
        nutrition: "도마뱀은 육식성이며 일반적으로 곤충, 거미 및 기타 작은 동물을 먹습니다. 일부 더 큰 종은 작은 포유류나 새도 먹을 수 있습니다. 포획된 도마뱀에게 필수 비타민과 미네랄을 제공하는 보충제뿐만 아니라 다양한 곤충 및 기타 음식이 포함된 균형 잡힌 식단을 제공하는 것이 중요합니다.",
        lifecycle: "대부분의 도마뱀은 알을 낳습니다.잠복기의 길이는 종에 따라 다르지만 대부분의 새끼는 완전히 형성되어 부화 후 곧 이동할 수 있습니다.종에 따라 다르지만 10년까지 삽니다.",
        recommandtype: "파충류",
        species: ["이구아나", "카멜레온", "레오파드게코", "크레스티드게코", "블루텅 스킨크", "펫테일 게코", "바이퍼 게코"],
        speciesImage: ["이구아나", "카멜레온", "레오파드게코", "크레스티드게코","블루텅 스킨크", "펫테일 게코", "바이퍼 게코"]
    ),
    Animal(
        title: "뱀",
        headline: "매혹적인 움직임",
        image: "뱀",
        description: "뱀은 길쭉하고 다리가 없는 파충류로 다양한 색상, 패턴 및 크기가 있습니다. 그들은 비늘로 덮여 있고 뾰족한 머리와 날카로운 이빨을 가진 길고 가느다란 몸을 가지고 있습니다.",
        characteristics: "뱀은 일반적으로 밤에 가장 활동적인 고독한 동물입니다. 그들은 냉혈 동물이므로 체온을 조절하기 위해 외부 열원에 의존합니다. 일부 종은 수목에 서식하여 나무에 사는 반면 다른 종은 땅에 거주합니다. 뱀은 일반적으로 유순한 동물이며 적절한 취급과 관리를 통해 훌륭한 애완동물이 될 수 있습니다.",
        nutrition: "뱀은 육식성이며 설치류, 새 및 기타 작은 동물을 포함한 다양한 먹이를 먹습니다. 애완동물로서 종에 따라 살아있는 먹이 또는 냉동-해동 먹이를 먹일 수 있습니다. 뱀이 비만이 될 수 있으므로 적절한 크기의 먹이를 먹이고 너무 많이 먹이는 것을 피하는 것이 중요합니다.",
        lifecycle: "뱀은 수명이 비교적 길며 일부 종은 사육 상태에서 최대 30년 이상을 삽니다. 그들은 종에 따라 다양한 나이에 성적으로 성숙하며 매년 몇 번 새끼를 낳을 수 있습니다.",
        recommandtype: "파충류",
        species: ["볼 파이톤", "콘스네이크", "킹 스네이크", "밀크 스네이크"],
        speciesImage: ["볼 파이톤", "콘스네이크", "킹 스네이크", "밀크 스네이크"]
    ),
    Animal(
        title: "새",
        headline: "화려하고 아름다운",
        image: "새",
        description: "budgerigars라고도 알려진 잉꼬는 인기있는 애완 동물 인 작고 화려한 새입니다. 그들은 길이가 약 7-8인치이고 긴 꼬리를 가진 가느다란 몸체를 가지고 있습니다. 녹색, 파란색, 노란색, 흰색 등 다양한 색상이 있습니다.",
        characteristics: "잉꼬는 재주를 부리고 인간의 말을 흉내 내도록 훈련될 수 있는 사회적이고 지능적인 새입니다. 그들은 활동적이고 장난기를 좋아하며 장난감을 가지고 노는 것과 주인과의 상호 작용을 즐깁니다. 또한 상대적으로 돌보기가 쉽고 초보자에게 훌륭한 반려동물이 됩니다.",
        nutrition: "건강한 잉꼬 식단은 다양한 신선한 과일과 채소, 고품질 씨앗 및 알갱이로 구성됩니다. 그들은 또한 깨끗한 물의 지속적인 공급이 필요합니다. 잉꼬는 신진대사가 높고 많은 먹이를 필요로 하므로 에너지 수준을 유지하기 위해 충분한 먹이를 제공하는 것이 중요합니다.",
        lifecycle: "앵무새의 수명은 평균 5~10년이지만 일부는 적절한 관리를 받으면 15년까지 살 수 있습니다. 그들은 애완용 새의 가장 일반적인 유형 중 하나이며 영어, 미국 및 호주와 같은 여러 품종이 있습니다. 그들은 또한 포로 상태에서 빠르고 쉽게 번식할 수 있는 능력으로도 유명합니다.",
        recommandtype: "조류",
        species: ["카나리아", "앵무새", "십자매", "코카투", "핀치새"],
        speciesImage: ["카나리아", "앵무새", "십자매", "코카투", "핀치새"]
    ),
    Animal(
        title: "토끼",
        headline: "많은 장난기와 호기심",
        image: "토끼",
        description: "토끼는 일반적으로 애완 동물로 기르는 작고 털이 많은 포유류입니다. 그들은 긴 귀, 푹신한 꼬리, 강한 뒷다리를 가지고 있습니다. 다양한 색상과 패턴이 있으며 품종에 따라 2~20파운드의 무게가 나갑니다.",
        characteristics: "토끼는 사회적인 동물이며 인간과 다른 토끼 모두와 어울리는 것을 즐깁니다. 그들은 일반적으로 매우 활동적이고 장난기 많으며 건강을 유지하기 위해 매일 운동이 필요합니다. 그들은 쓰레기통을 사용하도록 훈련받을 수 있으며 긍정적 강화 훈련을 통해 몇 가지 요령을 가르칠 수도 있습니다.",
        nutrition: "토끼는 초식 동물이므로 건초, 신선한 채소, 소량의 알갱이가 많은 식단을 먹여야 합니다. 그들은 또한 항상 신선한 물이 필요합니다. 소화 문제를 일으킬 수 있으므로 단 음식이나 딱딱한 음식을 먹이지 않는 것이 중요합니다.",
        lifecycle: "토끼는 적절한 보살핌을 받으면 10년까지 살 수 있습니다. 생후 4~6개월에 성적으로 성숙하며 4~12마리의 새끼를 낳을 수 있습니다. 인구 과잉과 건강 문제를 방지하기 위해 애완용 토끼를 중성화하거나 중성화하는 것이 중요합니다.",
        recommandtype: "포유류",
        species: ["홀랜드 롭", "네덜란드 드워프", "미니 렉스"],
        speciesImage: ["홀랜드 롭", "네덜란드 드워프", "미니 렉스"]
    ),
    Animal(
        title: "햄스터",
        headline: "솜털",
        image: "햄스터",
        description: "햄스터는 일반적으로 몸길이가 2~7인치이고 몸이 둥글고 다리가 짧은 작은 설치류입니다. 다양한 색상과 패턴이 있습니다.",
        characteristics: "햄스터는 특히 밤에 활동적이고 장난기 많은 것으로 알려져 있습니다. 그들은 고독한 동물이며 혼자있을 때 가장 잘합니다. 그들은 규칙적인 운동과 러닝휠이나 씹는 장난감과 같은 정신적 자극이 필요합니다.",
        nutrition: "햄스터는 잡식성이며 씨앗, 곡물, 야채 및 과일의 다양한 식단을 먹습니다. 그들은 좋은 소화기 건강을 유지하기 위해 고 섬유질 식단이 필요합니다. 햄스터는 또한 항상 신선한 물에 접근할 수 있어야 합니다.",
        lifecycle: "햄스터는 수명이 2~3년 정도로 비교적 짧습니다. 생후 3~4개월 정도에 성적으로 성숙하며 평생 동안 번식할 수 있습니다. 암컷 햄스터는 임신 기간이 약 16~18일이며 일반적으로 4~12마리의 새끼를 낳습니다.",
        recommandtype: "포유류",
        species: ["골든 햄스터", "드워프 햄스터", "로보로브스키 햄스터"],
        speciesImage: ["골든 햄스터", "드워프 햄스터", "로보로브스키 햄스터"]
    ),
    Animal(
        title: "고슴도치",
        headline: "날카로운 가시속 부드러움 ",
        image: "고슴도치",
        description: "고슴도치는 포식자로부터 자신을 보호하는 가시로 덮여 있습니다. 그들은 작고 둥근 몸과 짧은 다리를 가지고 있습니다. 그들의 가시는 종에 따라 흰색 또는 갈색일 수 있으며 보호를 위해 단단한 공 모양으로 굴릴 수 있습니다.",
        characteristics: "고슴도치는 야행성 동물이므로 밤에 가장 활동적입니다. 호기심이 많고 주변 환경을 탐색하는 것을 좋아합니다. 위협을 받으면 자신을 보호하기 위해 공 모양으로 굴러갑니다. 그들은 일반적으로 고독한 동물이며 애완 동물로 혼자 유지해야 합니다. 그들은 또한 독특한 발성으로 유명하며, 그 범위는 꿀꿀거리는 소리와 훌쩍이는 소리에서 끽끽거리는 소리와 휘파람 소리까지 다양합니다.",
        nutrition: "야생에서 고슴도치는 다양한 곤충, 달팽이 및 작은 동물을 먹습니다. 애완 동물로서 상업용 고슴도치 사료를 먹일 수 있으며 가끔 과일, 채소 및 곤충을 먹을 수도 있습니다. 유제품, 달거나 지방이 많은 음식, 염분이 많은 음식을 먹이지 않는 것이 중요합니다.",
        lifecycle: "고슴도치는 일반적으로 야생에서 4~6년을 살지만 사육 상태에서는 최대 10년까지 살 수 있습니다. 생후 6개월쯤 되면 성적으로 성숙해지며 1년에 몇 번 새끼를 낳을 수 있습니다.",
        recommandtype: "포유류",
        species: ["네발가락고슴도치", "유럽고슴도치", "인도긴귀고슴도치", "사막고슴도치", "브란트고슴도치"],
        speciesImage: ["네발가락고슴도치", "유럽고슴도치", "인도긴귀고슴도치", "사막고슴도치", "브란트고슴도치"]
    )
                 ]
