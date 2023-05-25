import SwiftUI

struct test01: View {
    let totalPages = 10
    @State var currentPage = 1
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
               
                ProgressBar(progress: 10)
                Text("\(currentPage) / \(totalPages)")
                    .font(.title3).bold()
                VStack {
                   
                    Spacer().frame(height: 50)
                    
                    Text("Q1.\n어떤 환경에서 주로 생활하시나요?")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    
                    
                    NavigationLink(destination: test02()
                        .navigationBarBackButtonHidden(true)) {
                            Text("아파트")
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
                            dict["도마뱀"]! += score
                            dict["금붕어"]! += score
                            dict["새"]! -= score
                            dict["토끼"]! -= score
                            dict["햄스터"]! += score
                            currentPage += 1
                        })
                    NavigationLink(destination: test02()
                        .navigationBarBackButtonHidden(true)) {
                            Text("단독 주택")
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
                        
                            currentPage += 1
                        })
                    
                    NavigationLink(destination: test02()
                        .navigationBarBackButtonHidden(true)) {
                            Text("원룸")
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
                            dict["도마뱀"]! += score * 2
                            dict["금붕어"]! += score * 2
                            dict["새"]! -= score * 2
                            dict["토끼"]! -= score * 2
                            dict["햄스터"]! += score * 2
                            
                            currentPage += 1
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

struct test01_Previews: PreviewProvider {
    static var previews: some View {
        test01()
    }
}


// 버튼 색상 클릭 바뀌게끔 권장.
