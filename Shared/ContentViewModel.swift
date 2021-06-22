//
//  ContentViewModel.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/06/15.
//
import Foundation
import Combine

class ContentViewModel: ObservableObject {
    
    @Published var events: [Event] = []
    
    func fetchConnpassEvent() async {
        do {
            let connpass = try await ConnpassRepository.fetchConnpassEvent(by: "iPhone")
            DispatchQueue.main.async {
                self.events = connpass.events
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
