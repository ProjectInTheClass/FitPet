import SwiftUI

struct test04: View {
    let totalPages = 10
    @State var currentPage = 4
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
                }.frame(height: 50).ignoresSafeArea()
                ProgressBar(progress: 40)
                Text("\(currentPage) / \(totalPages)")
                    .font(.title3).bold()
                VStack {
                    Spacer()
                    Text("희망하는 반려동물의 크기를 선택해 주세요.")
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    NavigationLink(destination: test05()
                        .navigationBarBackButtonHidden(true)) {
                            Text("소형")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score * 2
                            dict["고양이"]! -= score * 2
                            dict["도마뱀"]! += score * 2
                            dict["금붕어"]! += score * 2
                            dict["새"]! += score * 2
                            dict["토끼"]! -= score
                            dict["햄스터"]! += score * 2
                        })
                    NavigationLink(destination: test05()
                        .navigationBarBackButtonHidden(true)) {
                            Text("중형")
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
                            dict["도마뱀"]! -= score * 2
                            dict["금붕어"]! -= score * 2
                            dict["새"]! -= score * 2
                            dict["토끼"]! += score * 2
                            dict["햄스터"]! -= score * 2
                        })
                    NavigationLink(destination: test05()
                        .navigationBarBackButtonHidden(true)) {
                            Text("대형")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score * 2
                            dict["고양이"]! -= score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! -= score
                            dict["새"]! -= score
                            dict["토끼"]! -= score
                            dict["햄스터"]! -= score
                        })
                    Spacer()
                    
                }
                .padding()
            }
            .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.circle.fill").font(.system(size: 25)).foregroundColor(Color.white)})
        }
        .transition(.scale)
    }
}

struct test04_Previews: PreviewProvider {
    static var previews: some View {
        test04()
    }
}
