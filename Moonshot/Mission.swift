//
//  Mission.swift
//  Moonshot
//
//  Created by Berlin Thomas on 2024-07-14.
//

import Foundation

//struct CrewRole: Codable {
//    let name: String
//    let role: String
//}

struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
