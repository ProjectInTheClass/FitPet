//
//  RecommendedSites.swift
//  FitPet
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct RecommendedSites: View {
    // Variable to keep track of selected classification
    @State var selectedClassification = "포유류"
    
    var body: some View {
        NavigationStack {
            Spacer(minLength: 20)
            Divider()
            Spacer(minLength: 20)
            // MARK: - Picker
            VStack {
                // Picker to select classification
                Picker("Select Classification", selection: $selectedClassification) {
                    Text("포유류").tag("포유류")
                    Text("파충류").tag("파충류")
                    Text("조류").tag("조류")
                    Text("어류").tag("어류")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                // MARK: - 포유류
                List {
                    if selectedClassification == "포유류" {
                        Section(header: Text("네이버 카페")
                            .font(.callout)
                            .foregroundColor(.secondary)) {
                                HStack(alignment: .center) {
                                    NavigationLink(destination: MyWebview(urlToLoad: "https://cafe.naver.com/dogpalza")) {
                                        Image("네이버카페")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                        Text("네이버 카페 - 강사모")
                                    }
                                }
                                HStack(alignment: .center) {
                                    NavigationLink(destination: MyWebview(urlToLoad: "https://cafe.naver.com/ilovecat")) {
                                        Image("네이버카페")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                        Text("네이버 카페 - 고양이라서 다행이야")
                                    }
                                }
                                HStack(alignment: .center) {
                                    NavigationLink(destination: MyWebview(urlToLoad: "https://cafe.naver.com/edongmu")) {
                                        Image("네이버카페")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                        Text("네이버 카페 - 토끼야 놀자")
                                    }
                                }
                                HStack(alignment: .center) {
                                    NavigationLink(destination: MyWebview(urlToLoad: "https://cafe.naver.com/myfriendspet")) {
                                        Image("네이버카페")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                        Text("네이버 카페 - 햄사모")
                                    }
                                }
                                Section(header: Text("YouTube")
                                    .font(.callout)
                                    .foregroundColor(.secondary)) {
                                        HStack(alignment: .center) {
                                            NavigationLink(destination: MyWebview(urlToLoad: "https://m.youtube.com/@Bodeumofficial")) {
                                                Image("강형욱")
                                                    .resizable()
                                                    .frame(width: 80, height: 80)
                                                    .clipShape(Circle())
                                                Text("YouTube - 강형욱의 보듬 TV")
                                            }
                                        }
                                        HStack(alignment: .center) {
                                            NavigationLink(destination: MyWebview(urlToLoad: "https://m.youtube.com/channel/UCFcqNiSjbOpnYCTCACZ7bhQ")) {
                                                Image("왜그러냥")
                                                    .resizable()
                                                    .frame(width: 80, height: 80)
                                                Text("YouTube - 왜그러냥 귀엽개")
                                            }
                                        }
                                    }
                            }
                        // MARK: - 파충류
                    } else if selectedClassification == "파충류" {
                        Section(header: Text("파충류")
                            .font(.callout)
                            .foregroundColor(.secondary)) {
                                HStack(alignment: .center) {
                                    NavigationLink(destination: MyWebview(urlToLoad: "https://cafe.naver.com/reptilia")) {
                                        Image("파사모")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                        Text("네이버 카페 - 파사모")
                                    }
                                }
                                Section(header: Text("YouTube")
                                    .font(.callout)
                                    .foregroundColor(.secondary)) {
                                        HStack(alignment: .center) {
                                            NavigationLink(destination: MyWebview(urlToLoad: "https://m.youtube.com/@THEZOO_kr/featured")) {
                                                Image("다흑")
                                                    .resizable()
                                                    .frame(width: 80, height: 80)
                                                    .clipShape(Circle())
                                                Text("YouTube - 다흑")
                                            }
                                        }
                                        HStack(alignment: .center) {
                                            NavigationLink(destination: MyWebview(urlToLoad: "https://m.youtube.com/@jung_brre")) {
                                                Image("정브르")
                                                    .resizable()
                                                    .frame(width: 80, height: 80)
                                                Text("YouTube - 정브르")
                                            }
                                        }
                                    }
                            }
                        // MARK: - 조류
                    } else if selectedClassification == "조류" {
                        Section(header: Text("조류")) {
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://cafe.naver.com/baekparrotlove")) {
                                    Image("앵사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                        .clipShape(Circle())
                                    Text("네이버 카페 - 앵사모")
                                }
                            }
                            Section(header: Text("YouTube")
                                .font(.callout)
                                .foregroundColor(.secondary)) {
                                    HStack(alignment: .center) {
                                        NavigationLink(destination: MyWebview(urlToLoad: "https://m.youtube.com/@rumongdaro")) {
                                            Image("루몽다로")
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                                .clipShape(Circle())
                                            Text("YouTube - 루몽다로")
                                        }
                                    }
                                    HStack(alignment: .center) {
                                        NavigationLink(destination: MyWebview(urlToLoad: "https://m.youtube.com/@KoreanBirder")) {
                                            Image("새덕후")
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                                .clipShape(Circle())
                                            Text("YouTube - 새덕후")
                                        }
                                    }
                                }
                        }
                        // MARK: - 어류
                    } else if selectedClassification == "어류" {
                        Section(header: Text("어류")
                            .font(.callout)
                            .foregroundColor(.secondary)) {
                                HStack(alignment: .center) {
                                    NavigationLink(destination: MyWebview(urlToLoad: "https://cafe.naver.com/ranchu13")) {
                                        Image("금사사")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                        Text("네이버 카페 - 금사사")
                                    }
                                }
                                Section(header: Text("YouTube")
                                    .font(.callout)
                                    .foregroundColor(.secondary)) {
                                        HStack(alignment: .center) {
                                            NavigationLink(destination: MyWebview(urlToLoad: "https://m.youtube.com/@tvhesuinbada4267")) {
                                                Image("해수인")
                                                    .resizable()
                                                    .frame(width: 80, height: 80)
                                                    .clipShape(Circle())
                                                Text("YouTube - 해수인TV")
                                            }
                                        }
                                    }
                            }
                    }
                }
                .listStyle(GroupedListStyle())
                .padding()
                .navigationTitle("추천 사이트")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct RecommendedSites_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedSites()
    }
}

/*
 동물 종류 조사
- 포유류(개, 고양이, 토끼, 햄스터, 페럿, 고슴도치)
- 양서류(개구리, 두꺼비, 도롱뇽, 아홀로틀(우파루파), 악어, 영원(무족영원목))
- 파충류(뱀, 도마뱀, 카멜레온, 거북, 자라)
- 조류(십자매, 카나리아, 문조, 앵무새, 비둘기)
- 어류(구피, 금붕어, 닥터피쉬, 비단잉어, 해파리?)
*/
