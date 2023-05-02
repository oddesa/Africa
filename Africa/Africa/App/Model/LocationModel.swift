//
//  LocationModel.swift
//  Africa
//
//  Created by Jehnsen Hirena Kane on 02/05/23.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    var id, name, image: String
    var latitude, longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
