//
//  Event.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/06/15.
//

struct Event: Codable {
    var eventId: Int
    var title: String
    var startedAt: String
    var endedAt: String
    var ownerDisplayName: String
    var eventUrl: String
    var limit: Int
    var accepted: Int
    var waiting: Int
    var place: String
    var address: String
    var description: String
}
