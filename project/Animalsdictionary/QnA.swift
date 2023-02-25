//
//  QnA.swift
//  PetFollow
//
//  Created by mnzdrm on 2023/02/18.
//

import SwiftUI

struct QnA: View {
    var body: some View {
        NavigationView() {
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Text("과연 내가 \n반려동물을 \n키워도 될까요?")
                    .multilineTextAlignment(.center).font(.largeTitle).bold()
                Spacer()
                Spacer()
                NavigationLink(destination: Q1()) {
                    Text("계속")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.largeTitle)
                        .bold()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
                Spacer()
            }.padding()
                .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.fill").font(.system(size: 25)).foregroundColor(Color.orange)})
        }
    }
}

struct Q1: View {
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("Q1. 식비나 병원비 등의 지출을 감당할 충분한 경제적 여유가 있습니까?")
                .multilineTextAlignment(.center).font(.largeTitle).bold()
            Spacer()
            HStack{
                NavigationLink(destination: Q2().font(.largeTitle)) {
                    Text("예")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
                Spacer()
                Spacer()
                NavigationLink(destination: A1().font(.largeTitle)) {
                    Text("아니오")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
            }
            Spacer()
            Spacer()
        }.padding()
    }
}

struct A1: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("오답입니다!").font(.largeTitle).bold()
                Spacer()
                Text("반려동물을 입양하게 되면, 식비나 건강 검진비 및 치료비 등 관리 비용이 발생합니다. 이러한 지출을 감당할 여유가 있는지 고려한 후 반려동물을 입양하시길 바랍니다.")
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                Spacer()
                NavigationLink(destination: Q2()) {
                    Text("다음")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.largeTitle)
                        .bold()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Q2: View {
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("Q2. 반려동물과 산책하거나 함께할 충분한 시간적 여유가 있습니까?")
                .multilineTextAlignment(.center).font(.largeTitle).bold()
            Spacer()
            HStack{
                NavigationLink(destination: Q3().font(.largeTitle)) {
                    Text("예")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
                Spacer()
                Spacer()
                NavigationLink(destination: A2().font(.largeTitle)) {
                    Text("아니오")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
            }
            Spacer()
            Spacer()
        }.padding()
    }
}

struct A2: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("오답입니다!").font(.largeTitle).bold()
                Spacer()
                Text("매일 산책하거나 함께 있어 줄 시간이 충분한가요? \n개는 물론이고 고양이도 사회적 동물입니다. 어떤 동물이든 그와 교감하고 유대감을 형성하기에 충분한 시간이 필요합니다.")
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                Spacer()
                NavigationLink(destination: Q3()) {
                    Text("다음")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.largeTitle)
                        .bold()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Q3: View {
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("Q3. 반려동물은 소음 및 냄새의 원인이 됩니다. \n이를 인지하고 있습니까?")
                .multilineTextAlignment(.center).font(.largeTitle).bold()
            Spacer()
            HStack{
                NavigationLink(destination: Q4().font(.largeTitle)) {
                    Text("예")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
                Spacer()
                Spacer()
                NavigationLink(destination: A3().font(.largeTitle)) {
                    Text("아니오")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
            }
            Spacer()
            Spacer()
        }.padding()
    }
}

struct A3: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("오답입니다!").font(.largeTitle).bold()
                Spacer()
                Text("동물은 예상치 못한 다양한 문제행동을 보일 수도 있습니다. 이러한 부분을 미리 인지하고, 반려동물이 문제행동을 보일 시에 적절한 방법으로 대처할 지식과 지도력이 필요합니다.")
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                Spacer()
                NavigationLink(destination: Q4()) {
                    Text("다음")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.largeTitle)
                        .bold()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Q4: View {
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("Q4. 잠깐의 외로움 때문에 가벼운 마음으로 동물을 입양하시려는 건 아닌가요?")
                .multilineTextAlignment(.center).font(.largeTitle).bold()
            Spacer()
            HStack{
                NavigationLink(destination: Q5().font(.largeTitle)) {
                    Text("예")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
                Spacer()
                Spacer()
                NavigationLink(destination: A4().font(.largeTitle)) {
                    Text("아니오")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
            }
            Spacer()
            Spacer()
        }.padding()
    }
}

struct A4: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("오답입니다!").font(.largeTitle).bold()
                Spacer()
                Text("일반적으로 반려동물의 수명은 10-20년 정도입니다. 시간이 흘러 반려동물이 늙고 병들거나 보호자의 생활 패턴과 환경이 바뀌어도, 반려동물을 끝까지 책임지고 돌보려는 마음가짐이 필요합니다.")
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                Spacer()
                NavigationLink(destination: Q5()) {
                    Text("다음")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.largeTitle)
                        .bold()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Q5: View {
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("Q5. 동반자가 없거나, 모든 동반자와 반려동물 입양에 대하여 합의가 되었습니까?")
                .multilineTextAlignment(.center).font(.largeTitle).bold()
            Spacer()
            HStack{
                NavigationLink(destination: QF().font(.largeTitle)) {
                    Text("예")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
                Spacer()
                Spacer()
                NavigationLink(destination: A5().font(.largeTitle)) {
                    Text("아니오")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .bold()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
            }
            Spacer()
            Spacer()
        }.padding()
    }
}

struct A5: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("오답입니다!").font(.largeTitle).bold()
                Spacer()
                Text("반려동물을 입양하기 전에 모든 구성원이 입양에 동의하고, 해당 동물에 알레르기가 없어야 하며, 동물을 입양한 후에도 잘 책임질 수 있을지 충분히 생각해 보셔야 합니다.")
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
                Spacer()
                NavigationLink(destination: QF()) {
                    Text("다음")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.largeTitle)
                        .bold()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct QF: View {
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()
            Text("반려동물 자격요건\n자가 진단 완료!").multilineTextAlignment(.center).font(.largeTitle).bold()
            Spacer()
            Spacer()
            NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true)) {
                HStack {
                    Spacer()
                    Text("메인")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.largeTitle)
                        .bold()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                    Spacer()
                }
            }
            Spacer()
        }
    }
}

struct QnA_Previews: PreviewProvider {
    static var previews: some View {
        QnA()
    }
}
