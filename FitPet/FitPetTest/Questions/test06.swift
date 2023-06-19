import SwiftUI

struct test06: View {
    let totalPages = 10
    @State var currentPage = 6
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
                ProgressBar(progress: 60)
                Text("\(currentPage) / \(totalPages)")
                    .font(.title3).bold()
                VStack {
                    Spacer()
                    Text("어떤 활동을 선호하나요?")
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    NavigationLink(destination: test07()
                        .navigationBarBackButtonHidden(true)) {
                            Text("활발한 활동\n(운동, 산책, 등산)")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score * 2
                            dict["고양이"]! -= score * 2
                            dict["도마뱀"]! -= score * 2
                            dict["금붕어"]! -= score * 2
                            dict["새"]! -= score * 2
                            dict["토끼"]! += score * 2
                            dict["햄스터"]! -= score * 2
                        })
                    NavigationLink(destination: test07()
                        .navigationBarBackButtonHidden(true)) {
                            Text("정적인 활동\n(독서, 실내 활동)")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score * 2
                            dict["고양이"]! += score * 2
                            dict["도마뱀"]! += score * 2
                            dict["금붕어"]! += score * 2
                            dict["새"]! += score * 2
                            dict["토끼"]! -= score * 2
                            dict["햄스터"]! += score * 2
                        })
                    NavigationLink(destination: test07()
                        .navigationBarBackButtonHidden(true)) {
                            Text("상관없어요")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 75)
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
                    
                }
                .padding()
            }
            .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.circle.fill").font(.system(size: 25)).foregroundColor(Color.white)})
        }
        .transition(.scale)
    }
}

struct test06_Previews: PreviewProvider {
    static var previews: some View {
        test06()
    }
}
