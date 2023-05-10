import SwiftUI

struct test03: View {
    let totalPages = 10
    @State var currentPage = 3
    var body: some View {
        NavigationStack {
            VStack {
                ProgressBar(progress: 30)
                VStack {
                    Spacer()
                    Text("반려동물에게 투자를 할 수 있는 시간이 많나요?")
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    NavigationLink(destination: test04()
                        .navigationBarBackButtonHidden(true)) {
                            Text("많이 없어요.")
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
                            dict["도마뱀"]! -= score * 2
                            dict["금붕어"]! += score
                            dict["새"]! -= score * 2
                            dict["토끼"]! -= score * 2
                            dict["햄스터"]! += score
                        })
                    NavigationLink(destination: test04()
                        .navigationBarBackButtonHidden(true)) {
                            Text("적당해요.")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.BarColor)
                                .cornerRadius(10)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            dict["강아지"]! -= score
                            dict["고양이"]! += score
                            dict["도마뱀"]! -= score
                            dict["금붕어"]! -= score
                            dict["새"]! += score
                            dict["토끼"]! += score
                            dict["햄스터"]! -= score
                        })
                    NavigationLink(destination: test04()
                        .navigationBarBackButtonHidden(true)) {
                            Text("매우 많아요.")
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
                
                }
                .padding()
            }
            .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.circle.fill").font(.system(size: 25)).foregroundColor(Color.yellow)})
        }
        .transition(.scale)
    }
}

struct test03_Previews: PreviewProvider {
    static var previews: some View {
        test03()
    }
}
