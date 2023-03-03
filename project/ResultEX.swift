//
//  ResultEX.swift
//  project
//
//  Created by 백대홍 on 2023/03/04.
//

import SwiftUI

struct FitPetTest: View {
    var body: some View {
        NavigationStack {
            Spacer().frame(height: 100)
            Text("나의 맞춤 동물을 알아볼까요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 350)
            NavigationLink(destination: AnimalRecommendationView()) {
                Text("알아보기")
                    .font(.largeTitle).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    .foregroundColor(Color.white)
                    .cornerRadius(25)
            }
        }.padding()
    }
}


struct AnimalRecommendationView: View {
    
    @State private var livingSituation = ""
    @State private var indoorOutdoorSpace = ""
    @State private var timeToDedicate = ""
    @State private var like = ""
    @State private var hasChildrenOrPets = ""
    @State private var hasAllergiesOrHealthProblems = ""
    @State private var activityLevel = ""
    @State private var wantsAttention = ""
    @State private var numPetsHad = ""
    @State private var petCareBudget = ""
    @State private var life = ""
    @State private var money = ""
    @State private var preferredPetType = ""
    @State private var navigateToResults = false
    
    var recommendedAnimals: [String] {
        var animals: [String] = []
        
        if livingSituation == "apartment" {
            if indoorOutdoorSpace == "limited" {
                animals = ["Fish", "Hamster", "Cat"]
            } else {
                animals = ["Bird", "Rabbit", "Small Dog", "Cat"]
            }
        } else if livingSituation == "house" {
            if indoorOutdoorSpace == "limited" {
                animals = ["Fish", "Hamster", "Cat"]
            } else {
                animals = ["Bird", "Rabbit", "Medium or Large Dog", "Cat"]
            }
        }
        
        if timeToDedicate == "limited" {
            animals = animals.filter({ $0 == "Fish" || $0 == "Hamster" || $0 == "Lizard" }) //필터로 조건에 맞지 않는애들은 모두 삭제
        }
        
        if hasChildrenOrPets == "yes" {
            animals = animals.filter({ $0 == "Dog" || $0 == "Cat" || $0 == "Bird" || $0 == "Rabbit" || $0 == "Fish" })
        }
        
        if hasAllergiesOrHealthProblems == "yes" {
            animals = animals.filter({ $0 == "Fish" || $0 == "Bird" || $0 == "Lizard" })
        }
        
        if activityLevel == "active" {
            animals = animals.filter({ $0 == "Dog"  || $0 == "Rabbit" })
        } else if activityLevel == "sedentary" {
            animals = animals.filter({ $0 == "Fish" || $0 == "Hamster" || $0 == "Lizard" || $0 == "Cat" || $0 == "Bird" })
        }
        
        if wantsAttention == "yes" {
            animals = animals.filter({ $0 == "Dog" || $0 == "Rabbit" || $0 == "Bird" })
        } else if wantsAttention == "no" {
            animals = animals.filter({ $0 == "Cat" || $0 == "Fish" || $0 == "Hamster" || $0 == "Lizard" })
        }
        
        return animals
    }
    
    var body: some View {
        VStack {
            Text("당신은 어느환경에서 지내나요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: T2().font(.largeTitle)) {
                    Text("아파트")
                        .font(.title).bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded {
                
                livingSituation = "apartment"
            })
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("단독 주택")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                livingSituation = "house"
            })
            
        }
    }
}

struct Test2: View {
    @State private var indoorOutdoorSpace = ""
    var body: some View {
        VStack {
            Text("당신의 생활공간은 어느정도 크기인가요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: Test3().font(.largeTitle)) {
                Text("넓지 않아요!")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                indoorOutdoorSpace = "limited"
            })
            NavigationLink(destination: Test3().font(.largeTitle)) {
                Text("적당해요")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                indoorOutdoorSpace = "Moderate"
            })
            NavigationLink(destination: Test3().font(.largeTitle)) {
                Text("매우 넓어요!")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                indoorOutdoorSpace = "plenty"
            })
            
        }
    }
}
struct Test3: View {
    @State private var timeToDedicate = ""
    var body: some View {
        VStack {
            Text("반려동물에게 얼마나 시간 투자를 할수 있나요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: Test4().font(.largeTitle)) {
                Text("많이 없습니다.")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                timeToDedicate = "Limited"
            })
            NavigationLink(destination: Test4().font(.largeTitle)) {
                Text("적당해요")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                timeToDedicate = "Moderate"
            })
            NavigationLink(destination: Test4().font(.largeTitle)) {
                Text("매우 많습니다.")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                timeToDedicate = "plenty"
            })
        }
    }
}
struct Test4: View {
    @State private var hasChildrenOrPets = ""
    var body: some View {
        VStack {
            Text("어린이 또는 다른 반려동물을 키우고 계신가요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: Test5().font(.largeTitle)) {
                Text("네")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                hasChildrenOrPets = "yes"
            })
            NavigationLink(destination: Test5().font(.largeTitle)) {
                Text("아니요")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                hasChildrenOrPets = "no"
            })
          
        }
    }
}
struct Test5: View {
    @State private var hasAllergiesOrHealthProblems = ""
    var body: some View {
        VStack {
            Text("특정 반려동물은 알레르기 반응이 일어날수 있습니다. 알레르기를 가지고 계신가요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: Test6().font(.largeTitle)) {
                Text("네")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                hasAllergiesOrHealthProblems = "yes"
            })
            NavigationLink(destination: Test6().font(.largeTitle)) {
                Text("아니요")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                hasAllergiesOrHealthProblems = "no"
            })
          
        }
    }
}
struct Test6: View {
    @State private var activityLevel = ""
    var body: some View {
        VStack {
            Text("주로 어느정도의 활동량을 가지고 계신가요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: Test7().font(.largeTitle)) {
                Text("활발해요")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                activityLevel = "active"
            })
            NavigationLink(destination: Test7().font(.largeTitle)) {
                Text("적당해요")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                activityLevel = "moderate"
            })
            NavigationLink(destination: Test7().font(.largeTitle)) {
                Text("별로요?")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                activityLevel = "sedentary"
            })
          
        }
    }
}
struct Test7: View {
    @State private var wantsAttention = ""
    var body: some View {
        VStack {
            Text("반려 동물과의 상호작용을 중요시 여기시나요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: Test8().font(.largeTitle)) {
                Text("네")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                wantsAttention = "active"
            })
            NavigationLink(destination: Test8().font(.largeTitle)) {
                Text("아니요")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                wantsAttention = "moderate"
            })

          
        }
    }
}
struct Test8: View {
    @State private var life = ""
    var body: some View {
        VStack {
            Text("평균 수명은 각각의 동물이 모두 다릅니다. 어느정도의 수명의 반려동물을 원하시나요?(평균)")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: Test9().font(.largeTitle)) {
                Text("1년 미만")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                life = "short"
            })
            NavigationLink(destination: Test9().font(.largeTitle)) {
                Text("1 ~ 3년")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                life = "usally"
            })
            NavigationLink(destination: Test9().font(.largeTitle)) {
                Text("5년 이상")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                life = "long"
            })

          
        }
    }
}

struct Test9: View {
    @State private var money = ""
    var body: some View {
        VStack {
            Text("반려동물을 분양할시에 분양가가 발생 할 수 있습니다. 어느정도를 고려하고 계신가요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: Test10().font(.largeTitle)) {
                Text("5만")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                money = "short"
            })
            NavigationLink(destination: Test10().font(.largeTitle)) {
                Text("10만 이상")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                money = "usally"
            })
            NavigationLink(destination: Test10().font(.largeTitle)) {
                Text("50만 이상")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                money = "lot"
            })

          
        }
    }
}
struct Test10: View {
    @State private var like = ""
    var body: some View {
        VStack {
            Text("최종적으로 가장 선호 하시는 동물을 선택해주세요!")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: PetRecommendationView(preferredPet: like)) {
                Text("강아지")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                like = "dog"
            })
            NavigationLink(destination: PetRecommendationView(preferredPet: like)) {
                Text("고양이")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                like = "cat"
            })
            NavigationLink(destination: PetRecommendationView(preferredPet: like)) {
                Text("토끼")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                like = "rabbit"
            })
            
            NavigationLink(destination: PetRecommendationView(preferredPet: like)) {
                Text("새")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                like = "bird"
            })
            NavigationLink(destination: PetRecommendationView(preferredPet: like)) {
                Text("햄스터")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                like = "hamster"
            })
            NavigationLink(destination: PetRecommendationView(preferredPet: like).font(.largeTitle)) {
                Text("물고기")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                like = "fish"
            })
            
          
        }
    }
}


//import SwiftUI
//struct RecommendedAnimalView: View {
//    let isLandSelected: Bool
//    let isAquaticSelected: Bool
//    let isDaySelected: Bool
//    let isNightSelected: Bool
//    let isHerbivoreSelected: Bool
//    let isCarnivoreSelected: Bool
//
//    var body: some View {
//        VStack {
//            Text("당신의 추천도에 따라서 당신에게 어울리는 동물은:")
//            Text(getRecommendedAnimal())
//        }
//    }
//
//    func getRecommendedAnimal() -> String {
//        if isLandSelected && isDaySelected && isHerbivoreSelected {
//            return "Giraffe"
//        } else if isLandSelected && isDaySelected && isCarnivoreSelected {
//            return "Lion"
//        } else if isLandSelected && isNightSelected && isHerbivoreSelected {
//            return "Kangaroo"
//        } else if isLandSelected && isNightSelected && isCarnivoreSelected {
//            return "Wolf"
//        } else if isAquaticSelected && isDaySelected && isHerbivoreSelected {
//            return "Dolphin"
//        } else if isAquaticSelected && isDaySelected && isCarnivoreSelected {
//            return "Shark"
//        } else if isAquaticSelected && isNightSelected && isHerbivoreSelected {
//            return "Octopus"
//        } else if isAquaticSelected && isNightSelected && isCarnivoreSelected {
//            return "Giant squid"
//        } else {
//            return "No recommendation"
//        }
//    }
//}
//
//struct RecommendedAnimalView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecommendedAnimalView(isLandSelected: true, isAquaticSelected: false, isDaySelected: true, isNightSelected: false, isHerbivoreSelected: true, isCarnivoreSelected: false)
//    }
//}

//
//
//    Form {
//        Section(header: Text("당신은 어느환경에서 지내나요?")) {
//            Picker("Select an option", selection: $livingSituation) {
//                Text("Apartment").tag("apartment")
//                Text("House").tag("house")
//                Text("Farm").tag("farm")
//            }
//        }
//
//        Section(header: Text("생활 공간의 크기는 어떤가요?")) {
//            Picker("Select an option", selection: $indoorOutdoorSpace) {
//                Text("Limited").tag("limited")
//                Text("Moderate").tag("moderate")
//                Text("Plenty").tag("plenty")
//            }
//        }
//
//        Section(header: Text("반려동물에게 얼마나 시간 투자를 할수 있나요?")) {
//            Picker("Select an option", selection: $timeToDedicate) {
//                Text("Limited").tag("limited")
//                Text("Moderate").tag("moderate")
//                Text("Plenty").tag("plenty")
//            }
//        }
//
//        Section(header: Text("어린이 또는 다른 반려동물을 키우고 계신가요?")) {
//            Picker("Select an option", selection: $hasChildrenOrPets) {
//                Text("Yes").tag("yes")
//                Text("No").tag("no")
//            }
//        }
//
//        Section(header: Text("특정 반려동물은 알레르기 반응이 일어날수 있습니다. 알레르기를 가지고 계신가요?")) {
//            Picker("Select an option", selection: $hasAllergiesOrHealthProblems) {
//                Text("Yes").tag("yes")
//                Text("No").tag("no")
//            }
//        }
//
//        Section(header: Text("주로 어느정도의 활동량을 가지고 계신가요?")) {
//            Picker("Select an option", selection: $activityLevel) {
//                Text("Active").tag("active")
//                Text("Moderate").tag("moderate")
//                Text("Sedentary").tag("sedentary")
//            }
//        }
//
//        Section(header: Text("반려 동물과의 상호작용을 중요시 여기시나요?")) {
//            Picker("Select an option", selection: $wantsAttention) {
//                Text("Yes").tag("yes")
//                Text("No").tag("no")
//            }
//        }
//
//        Section(header: Text("이미가지고 있는 반려 동물의 마리수를 적어주세요")) {
//            TextField("Enter a number", text: $numPetsHad)
//                .keyboardType(.numberPad)
//        }
//
//        Section(header: Text("반려동물을 위한 예산은 어느정도로 가지고 계신가요? ")) {
//            TextField("Enter an amount", text: $petCareBudget)
//                .keyboardType(.decimalPad)
//        }
//
//        Section(header: Text("Preferred Pet Type")) {
//            Picker("Select an option", selection: $preferredPetType) {
//                Text("Dog").tag("dog")
//                Text("Cat").tag("cat")
//                Text("Rabbit").tag("rabbit")
//                Text("Bird").tag("bird")
//                Text("Fish").tag("fish")
//                Text("Hamster").tag("hamster")
//                Text("Lizard").tag("lizard")
//            }
//        }
//
//
//    }
//
//    VStack {
//
//        Section {
//            NavigationLink(destination: PetRecommendationView(budget: Int(petCareBudget) ?? 0, preferredPet: preferredPetType)) {
//                Text("See Results")
//            }
//
//        }
//    }
//}
//.navigationBarTitle("Pet Recommendation")
//.padding()
