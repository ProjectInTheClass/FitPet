import SwiftUI

struct test09: View {
    let totalPages = 10
    @State var currentPage = 9
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
                ProgressBar(progress: 90)
                Text("\(currentPage) / \(totalPages)")
                    .font(.title3).bold()
                VStack {
                    Spacer()
                    Text("반려동물의 분양가는 어느 정도까지 고려하고 있나요?")
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    NavigationLink(destination: test10()
                        .navigationBarBackButtonHidden(true)) {
                            Text("입양")
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
                    NavigationLink(destination: test10()
                        .navigationBarBackButtonHidden(true)) {
                            Text("10만원 미만")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score
                            dict["고양이"]! -= score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! += score
                            dict["새"]! -= score
                            dict["토끼"]! -= score
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: test10()
                        .navigationBarBackButtonHidden(true)) {
                            Text("30만 원 이상")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! += score
                            dict["고양이"]! += score
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! += score
                            dict["토끼"]! += score
                            dict["햄스터"]! += score
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

struct test09_Previews: PreviewProvider {
    static var previews: some View {
        test09()
    }
}
