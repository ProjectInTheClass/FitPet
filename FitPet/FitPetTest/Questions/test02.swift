import SwiftUI

struct test02: View {
    let totalPages = 10
    @State var currentPage = 2
    init() { UINavigationBar.setAnimationsEnabled(false) }
    var body: some View {
        NavigationStack {
            VStack {
                
                ZStack {
                    Color.MainColor
                    HStack {
                        Image("상단바")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.top,80)
                            .padding(.horizontal,20)
                        Spacer()
                    }
                }.frame(width: .infinity, height: 80).ignoresSafeArea()
                
                ProgressBar(progress: 20)
                Text("\(currentPage) / \(totalPages)")
                VStack {
                    Spacer()
                    Text("생활 공간은 어느 정도 크기인가요?")
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    NavigationLink(destination: test03()
                        .navigationBarBackButtonHidden(true)) {
                            Text("넓지 않아요.")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score * 2
                            dict["고양이"]! += score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! += score
                            dict["토끼"]! -= score * 2
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: test03()
                        .navigationBarBackButtonHidden(true)) {
                            Text("적당해요.")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            dict["강아지"]! += score
                            dict["고양이"]! += score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! += score
                            dict["토끼"]! += score
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: test03()
                        .navigationBarBackButtonHidden(true)) {
                            Text("매우 넓어요.")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score * 2
                            dict["고양이"]! += score * 2
                            dict["도마뱀"]! += score * 2
                            dict["금붕어"]! += score * 2
                            dict["새"]! += score * 2
                            dict["토끼"]! += score * 2
                            dict["햄스터"]! += score * 2
                        })
                    Spacer()
                    VStack {
                        ForEach(dict.keys.sorted(), id: \.self) { key in
                            Text("\(key): \(dict[key] ?? 0)")
                        }
                    }
                }
                .padding()
            }
            .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.circle.fill").font(.system(size: 25)).foregroundColor(Color.white)})
        }
        .transition(.scale)
    }
}

struct test02_Previews: PreviewProvider {
    static var previews: some View {
        test02()
    }
}
