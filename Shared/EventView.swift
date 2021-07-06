//
//  EventView.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/07/06.
//
import SwiftUI

struct EventView: View {
    let event: Event
    var body: some View {
        HStack {
            VStack{
                Text(event.title)
                Text("🕒 \(event.startedAt) 〜 \(event.endedAt)")
                    .frame(maxWidth: .infinity , alignment: .leading)
                    .font(Font.system(size: 12))
            }
        }.padding(5)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {

        let event = Event(id: 1,
                          title: "タイトル",
                          startedAt: "20",
                          endedAt: "aaa",
                          ownerDisplayName: "aaaaa",
                          eventUrl: "https://www.google.co.jp",
                          accepted: 1,
                          description: "ああああ")
        return EventView(event: event)
    }
}
