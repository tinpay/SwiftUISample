//
//  ContentViewModel.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/06/15.
//
import Foundation
import Combine

class ContentViewModel: ObservableObject {
    @Published var title: String?
    @Published var startedAt: String?
    @Published var ownerDisplayName: String?
    
//    static let chatworkEventId = 204879
    static let chatworkEventId = 10851
    
    
    func fetchConnpassEvent() async {
        do {
            let connpass = try await ConnpassRepository.fetchConnpassEvent(eventId: ContentViewModel.chatworkEventId)
            DispatchQueue.main.async {
                self.title = connpass.events.first?.title
                self.startedAt = connpass.events.first?.startedAt
                self.ownerDisplayName = connpass.events.first?.ownerDisplayName
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
