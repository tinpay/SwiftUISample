//
//  Event.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/06/15.
//

import Foundation
import SwiftUI

struct Event: Codable, Identifiable {
    
    var id: Int
    var title: String
    var startedAt: String
    var endedAt: String
    var ownerDisplayName: String
    var eventUrl: String
//    var limit: Int
    var accepted: Int
//    var waiting: Int
//    var place: String
//    var address: String
    var description: String
    
    enum CodingKeys: String, CodingKey {
        case id = "eventId"
        case title
        case startedAt
        case endedAt
        case ownerDisplayName
        case eventUrl
//        case limit
        case accepted
//        case waiting
//        case place
//        case address
        case description
        
      
    }
}
