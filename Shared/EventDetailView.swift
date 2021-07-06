//
//  EventDetailView.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/07/06.
//

import SwiftUI

struct EventDetailView: View {
    let event: Event
    @State private var showsWebView: Bool = false
    var body: some View {
        VStack {
            Text(event.title)
            Button {
                self.showsWebView.toggle()
            } label: { Text("ひらく")
            }.sheet(isPresented: self.$showsWebView) {
                print("dismiss!!")
            } content: {
                if let url = URL(string: event.eventUrl) {
                    ConnpassPageView(url: url)
                }
            }
        }
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {

        let event = Event(id: 1,
                          title: "タイトル",
                          startedAt: "20",
                          endedAt: "aaa",
                          ownerDisplayName: "aaaaa",
                          eventUrl: "https://www.google.co.jp",
                          accepted: 1,
                          description: "ああああ")
        return EventDetailView(event: event)
    }
}
