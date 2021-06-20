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
            VStack {
                Text(viewModel.title ?? "")
                Text(viewModel.startedAt ?? "")
                Button {
                    print("tap button")
                } label: {
                    Text(viewModel.ownerDisplayName ?? "")
                }.foregroundColor(.white)
                    .padding(40)
                    .background(Color.blue)
                    .cornerRadius(12)
            }.navigationTitle("Chatworkイベント")
        }.onAppear {
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
        viewModel.title = "たいとる"
        viewModel.startedAt = "2021-06-13 19:00"
        viewModel.ownerDisplayName = "春日さん"
        return ContentView(viewModel: viewModel)
    }
}
