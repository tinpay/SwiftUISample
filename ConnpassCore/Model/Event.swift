//
//  Event.swift
//  ConnpassDemo
//
//  Created by tinpay on 2021/06/15.
//

import Foundation
import SwiftUI

public struct Event: Codable, Identifiable {
    
    public var id: Int
    public var title: String
    public var startedAt: String
    public var endedAt: String
    public var ownerDisplayName: String
    public var eventUrl: String
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
