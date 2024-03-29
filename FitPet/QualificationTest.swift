import SwiftUI

var Qnum: Int = 0
var Anum: Int = 0
var question: [String] = ["Q1. 식비나 병원비 등의 지출을 감당할 충분한 경제적 여유가 있다.", "Q2. 반려동물과 산책을 하거나 함께할 충분한 시간적 여유가 없다.", "Q3. 반려동물은 소음 및 냄새의 원인이 된다는 것을 인지하고 있다.", "Q4. 단순히 귀여울 것 같거나 잠깐의 외로움 때문에 가벼운 마음으로 동물을 입양하려고 한다.", "Q5. 모든 동반자가 반려동물 입양에 대하여 합의했다."]
var answerYN: [String] = ["정답", "오답", "정답", "오답", "정답", "오답"]
var answerEX: [String] = ["반려동물을 입양하게 되면, 식비나 건강 검진비 및 치료비 등 관리 비용이 발생합니다. 이러한 지출을 감당할 여유가 있는지 고려한 후 반려동물을 입양하시길 바랍니다.", "매일 산책하거나 함께 있어 줄 시간이 충분한가요? \n어떤 동물이든 교감하고 유대감을 형성하는 충분한 시간이 필요합니다.", "동물은 예상치 못한 다양한 문제행동을 보일 수도 있습니다. 반려동물로 인해 생길 수 있는 피해가 주변 사람에게 영향을 끼치지 않게 해야 합니다.", "일반적으로 반려동물의 수명은 10-20년 정도입니다. 반려동물이 늙고 병들거나 보호자의 생활 패턴과 환경이 바뀌어도, 반려동물을 끝까지 책임지고 돌보려는 마음가짐이 필요합니다.", "반려동물을 입양하기 전에 모든 구성원이 입양에 동의하고, 해당 동물에 알레르기가 없어야 하며, 동물을 입양한 후에도 잘 책임질 수 있을지 충분히 생각해 보셔야 합니다."]
var AnswerImage : [String] = ["Answer1", "Answer2", "Answer3", "Answer4", "Answer5"]

struct QualificationTest: View {
    var body: some View {
        NavigationStack {
            Text("과연 내가 반려동물을 키워도 될까요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 350)
            NavigationLink(destination: Question()
                .navigationBarBackButtonHidden(true)) {
                    Text("시작하기")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                .simultaneousGesture(TapGesture().onEnded{
                    Qnum = 0
                    Anum = 0
                })
            Spacer().frame(height: 50)
        }
        .padding()
    }
}

struct Question: View {
    var body: some View {
        NavigationStack {
            VStack {
                //Spacer().frame(height: 50)
                Text("\(question[Qnum])")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 50)
                HStack{
                    NavigationLink(destination: Answer()
                        .navigationBarBackButtonHidden(true)) {
                            Text("예")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            Anum = Qnum+0
                        })
                    Spacer().frame(width: 25)
                    NavigationLink(destination: Answer()
                        .navigationBarBackButtonHidden(true)) {
                            Text("아니오")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            Anum = Qnum+1
                        })
                }
                Spacer().frame(height: 100)
            }
            .padding()
            .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.fill").font(.system(size: 25)).foregroundColor(Color.yellow)})
        }
    }
}

struct Answer: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer().frame(height: 0)
                Text("\(answerYN[Anum])입니다!")
                    .font(.largeTitle).bold()
                Spacer().frame(height: 50)
                Image(AnswerImage[Qnum])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                Text("\(answerEX[Qnum])")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                Spacer().frame(height: 100)
                NavigationLink(destination:
                                Qnum == 4
                               ? AnyView(CompletionPage())
                    .navigationBarBackButtonHidden(true)
                               : AnyView(Question())
                    .navigationBarBackButtonHidden(true)
                ) {
                    Text("다음")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.black)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                .simultaneousGesture(TapGesture().onEnded{
                    Qnum += 1
                })
                Spacer().frame(height: 0)
            }
            .padding()
            .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.fill").font(.system(size: 25)).foregroundColor(Color.yellow)})
        }
    }
}

struct CompletionPage: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 50)
            Text("반려동물 \n상식 퀴즈 완료!")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            Text("이제 나와 잘 맞는 반려동물을 찾아보세요.")
                .font(.title3).bold()
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
            Spacer().frame(height: 300)
            NavigationLink(destination: MainPage()
                .navigationBarBackButtonHidden(true)) {
                    Text("메인")
                        .font(.headline).bold()
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
            Spacer().frame(height: 50)
        }
        .padding()
    }
}

struct QualificationTest_Previews: PreviewProvider {
    static var previews: some View {
        QualificationTest()
    }
}

// 온보딩 페이지 대신해서 한번은 사용하게끔 하는것을 추천해주심.
// 관련된 사진을 넣어서 안심심하게 채우기. 텍스트 크기는 줄이고
