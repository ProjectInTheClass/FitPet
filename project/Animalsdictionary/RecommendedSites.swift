//
//  RecommendedSites.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//
import SwiftUI

struct RecommendedSites: View {
    
    // Variable to keep track of selected classification
    @State var selectedClassification = "Mammals"
    
    var body: some View {
        NavigationStack {
            
            VStack(alignment: .center ,spacing: 20) {
                Text("This is a link to a cafe and YouTube related to animals.")
                    .font(.title.bold())
                Text("Use the link you want to learn more information.")
                    .font(.title3.bold())
            }
            Divider()
            // MARK: - Picker
            VStack {
                // Picker to select classification
                Picker("Select Classification", selection: $selectedClassification) {
                    Text("포유류").tag("포유류")
                    Text("양서류").tag("양서류")
                    Text("파충류").tag("파충류")
                    Text("조류").tag("조류")
                    Text("어류").tag("어류")
                    Text("곤충").tag("곤충")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                // MARK: - 포유류
                List {
                    if selectedClassification == "포유류" {
                        
                            Section(header: Text("포유류")) {
                                HStack(alignment: .center) {
                                    NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                        Image("파사모")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                        Text("Naver Cafe - Passamo")
                                    }
                                }
                                HStack(alignment: .center) {
                                    NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                        Image("파사모")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                        Text("Naver Cafe - Passamo")
                                    }
                                }
                            }
                        // MARK: - 양서류
                    } else if selectedClassification == "양서류" {
                        Section(header: Text("양서류")) {
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                        }
                        // MARK: - 파충류
                    } else if selectedClassification == "파충류" {
                        Section(header: Text("파충류")) {
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                        }
                        // MARK: - 조류
                    } else if selectedClassification == "조류" {
                        Section(header: Text("조류")) {
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                        }
                        // MARK: - 어류
                    } else if selectedClassification == "어류" {
                        Section(header: Text("어류")) {
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                        }
                        // MARK: - 곤충
                    } else if selectedClassification == "곤충" {
                        Section(header: Text("곤충")) {
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                            HStack(alignment: .center) {
                                NavigationLink(destination: MyWebview(urlToLoad: "https://translate.google.co.kr/")) {
                                    Image("파사모")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text("Naver Cafe - Passamo")
                                }
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .padding()
                .navigationTitle("Recommended Sites")
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

/*동물 종류 조사
- 포유류(개, 고양이, 토끼, 햄스터, 페럿, 고슴도치)
- 양서류(개구리, 두꺼비, 도롱뇽, 아홀로틀(우파루파), 악어, 영원(무족영원목))
- 파충류(뱀, 도마뱀, 카멜레온, 거북, 자라)
- 조류(십자매, 카나리아, 문조, 앵무새, 비둘기)
- 어류(구피, 금붕어, 닥터피쉬, 비단잉어, 해파리?)

 
 
 */
