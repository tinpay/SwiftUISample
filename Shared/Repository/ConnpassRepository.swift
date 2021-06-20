//
//  ConnpassRepository.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/06/15.
//

import Foundation
protocol ConnpassRepositoryProtocol {
    static func fetchConnpassEvent(eventId: Int)  async throws -> Connpass
}

class ConnpassRepository: ConnpassRepositoryProtocol {
    static func fetchConnpassEvent(eventId: Int)  async throws -> Connpass {
        let request = URLRequest(url: URL(string: "https://connpass.com/api/v1/event/?event_id=\(eventId)")!)
        let (data, _) = try await URLSession.shared.data(for: request)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(Connpass.self, from: data)
    }

    static func fetchConnpassEvent(by keyword: String)  async throws -> Connpass {
        let request = URLRequest(url: URL(string: "https://connpass.com/api/v1/event/?keyword=\(keyword)")!)
        let (data, _) = try await URLSession.shared.data(for: request)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(Connpass.self, from: data)
    }

}
