import SwiftUI

struct test01: View {
    var body: some View {
        NavigationStack {
            VStack {
                ProgressBar(progress: 10)
                VStack {
                    Spacer()
                    Text("당신은 어느 환경에서 주로 생활하나요?")
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 50)
                    NavigationLink(destination: test02()
                        .navigationBarBackButtonHidden(true)) {
                            Text("아파트")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
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
                            dict["뱀"]! += score
                        })
                    NavigationLink(destination: test02()
                        .navigationBarBackButtonHidden(true)) {
                            Text("단독 주택")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
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
                            dict["뱀"]! += score * 2
                        })
                    
                    NavigationLink(destination: test02()
                        .navigationBarBackButtonHidden(true)) {
                            Text("원룸")
                                .font(.headline).bold()
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundColor(.black)
                                .background(Color.yellow)
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
                            dict["뱀"]! += score
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
            .navigationBarItems(trailing: NavigationLink(destination: MainPage().navigationBarHidden(true)){Image(systemName: "house.circle.fill").font(.system(size: 25)).foregroundColor(Color.yellow)})
        }
        .transition(.scale)
    }
}

struct test01_Previews: PreviewProvider {
    static var previews: some View {
        test01()
    }
}
