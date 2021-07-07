//
//  ConnpassPageView.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/07/06.
//

import SwiftUI

struct ConnpassPageView: View {
    
    let url: URL
    var body: some View {
        NavigationView{
            CustomWebView(url: url)
                .navigationTitle("WebView")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(leading: DismissButton())
        }
    }
    
    // 閉じるボタン
    private struct DismissButton: View {
        @Environment(\.presentationMode) var presentationMode

        var body: some View {
            Button(action: {
                if presentationMode.wrappedValue.isPresented {
                    presentationMode.wrappedValue.dismiss()
                }
            }) {
                Text("とじる")
            }
        }
    }
}

struct ConnpassPageView_Previews: PreviewProvider {
    static var previews: some View {
        ConnpassPageView(url: URL(string: "https://www.google.co.jp")!)
    }
}
