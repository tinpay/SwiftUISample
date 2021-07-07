//
//  CustomWebView.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/07/06.
//

import SwiftUI
import WebKit


struct CustomWebView: UIViewRepresentable {
    
    let url: URL
//    private let observable = WebViewURLObservable()
//
//    var observer: NSKeyValueObservation? {
//        observable.instance
//    }

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
//        observable.instance = uiView.observe(\WKWebView.url, options: .new) { view, change in
//        }
        uiView.load(URLRequest(url: url))
    }
}

//private class WebViewURLObservable: ObservableObject {
//    @Published var instance: NSKeyValueObservation?
//}
