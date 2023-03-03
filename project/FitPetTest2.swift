//
//  FitPetTest.swift
//  project
//
//  Created by mnzdrm on 2023/02/27.
//

import SwiftUI

// 강아지 고양이 도마뱀 금붕어 토끼 햄스터 페럿 고슴도치 개구리 뱀 카멜레온 거북이 앵무새
var dog: Int = 0
var cat: Int = 0
var lizard: Int = 0
var goldfish: Int = 0
var rabbit: Int = 0
var hamster: Int = 0
var ferret: Int = 0
var hedgehog: Int = 0
var frog: Int = 0
var snake: Int = 0
var chameleon: Int = 0
var turtle: Int = 0
var parrot: Int = 0
var pets: [Int] = [dog, cat, lizard, goldfish]

struct FitPetTest2: View {
    var body: some View {
        NavigationStack {
            Spacer().frame(height: 100)
            Text("나의 맞춤 동물을 알아볼까요?")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 350)
            NavigationLink(destination: T1()) {
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

// MARK: - Test Start
struct T1: View {
    var body: some View {
        VStack {
            Text("보기에서 가장 좋아하는 동물을 고르시오.")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("포유류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                dog += 1
                cat += 1
            })
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("양서류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                goldfish += 1
            })
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("파충류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                lizard += 1
            })
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("조류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                /***/
            })
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("어류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                /***/
            })
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("해당 없음")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                /***/
            })
        }//.padding()
    }
}

struct T2: View {
    var body: some View {
        VStack {
            Text("보기에서 가장 싫어하거나 알레르기가 있는 동물을 고르시오.")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: TF().font(.largeTitle)) {
                Text("포유류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                dog -= 1
                cat -= 1
            })
            NavigationLink(destination: TF().font(.largeTitle)) {
                Text("양서류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                goldfish -= 1
            })
            NavigationLink(destination: TF().font(.largeTitle)) {
                Text("파충류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                lizard -= 1
            })
            NavigationLink(destination: TF().font(.largeTitle)) {
                Text("해당 없음")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                /***/
            })
        }//.padding()
    }
}

struct T3: View {
    var body: some View {
        VStack {
            Text("보기에서 가장 좋아하는 동물을 고르시오.")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
            Spacer().frame(height: 50)
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("포유류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                /***/
            })
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("양서류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                /***/
            })
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("파충류")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                /***/
            })
            NavigationLink(destination: T2().font(.largeTitle)) {
                Text("해당 없음")
                    .font(.title).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)
            }.simultaneousGesture(TapGesture().onEnded{
                /***/
            })
        }//.padding()
    }
}

// MARK: - Test End
struct TF: View {
    var body: some View {
        VStack {
            Image(systemName: "lizard.fill")
                .font(.system(size: 50))
                .foregroundColor(.yellow)
            /*Image(animalsData[0].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:100, height: 100)
                .cornerRadius(10)*/
            Spacer().frame(height: 25)
            Text("당신에게 알맞은 동물은 \"\(animalsData[0].title)\"으로 선정되었습니다.")
                .font(.title).bold()
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer().frame(height: 350)
            //Text("Score Check: \nDog \(dog), Cat \(cat), Lizard \(lizard), Goldfish \(goldfish).")
            NavigationLink(destination: ResultExample()) {
                Text("자세히 보기")
                    .font(.largeTitle).bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    .foregroundColor(Color.white)
                    .cornerRadius(25)
            }
        }
    }
}

struct FitPetTest_Previews: PreviewProvider {
    static var previews: some View {
        FitPetTest2()
    }
}
