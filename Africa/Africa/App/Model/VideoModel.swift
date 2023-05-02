//
//  VideoModel.swift
//  Africa
//
//  Created by Jehnsen Hirena Kane on 01/05/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id, name, headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
