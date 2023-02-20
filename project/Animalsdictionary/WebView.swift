//
//  WebView.swift
//  project
//
//  Created by 백대홍 on 2023/02/20.
//

import SwiftUI
import WebKit
import UIKit
struct MyWebview: UIViewRepresentable {
    
    //열려고 하는 url 주소의 멤버변수
    var urlToLoad: String
    
    //UIView 만들기
    func makeUIView(context: Context) -> WKWebView { //웹뷰 반횐
            
            
            guard let url = URL(string: self.urlToLoad) else{
                return WKWebView()
            }
            
            // 웹뷰 인스턴스 생성
            let webview = WKWebView()
            
            //웹뷰 로드
            webview.load(URLRequest(url: url))
            
            //웹뷰 반환
            return webview
        }
        
    //업데이트 UIView
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
    }
}


struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://github.com/bdh3620")
    }
}
