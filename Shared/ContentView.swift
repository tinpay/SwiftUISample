//
//  ContentView.swift
//  Shared
//
//  Created by tinpay on 2021/06/15.
//
import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.events, id: \.id){ event in
                NavigationLink(destination: EventDetailView(event: event),
                               label: {
                        EventView(event: event)
                    }
                )
            }
            .listStyle(.grouped)
            .navigationTitle("Connpass")
            .navigationBarTitleDisplayMode(.large)
        }
        .navigationViewStyle(.columns)
        .onAppear {
            async {
                await fetchEvents()
            }
        }
    }
    
    private func fetchEvents() async {
        await viewModel.fetchConnpassEvent()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ContentViewModel()
        let event = Event(id: 1,
                          title: "テストタイトルテストタイトルテストタイトルテストタイトルテストタイトル",
                          startedAt: "2021/06/22 11:11:11",
                          endedAt: "2021/06/22 11:11:21",
                          ownerDisplayName: "春日",
                          eventUrl: "https://www.chatwork.com",
                          accepted: 1,
                          description: "test")
        viewModel.events = [event,event,event,event,event,]
        return ContentView(viewModel: viewModel)
    }
}
