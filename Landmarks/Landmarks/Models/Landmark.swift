//
//  Landmark.swift
//  Landmarks
//
//  Created by Abdullah Bilgin on 12/13/22.
//

import Foundation
import SwiftUI
import CoreLocation

// Create a Landmark Model: create a model to store data that you can pass into your views.

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // Add an imageName property to read the name of the image from the data
    private var imageName: String // You make the property private because users of the Landmarks structure care only about the image itself.
    
    // computed image property that loads an image from the asset catalog.
    var image: Image {
        Image(imageName)
    }

    // Add a coordinates property to the structure using a nested Coordinates type that reflects the storage in the JSON data structure.
    private var coordinates: Coordinates
    
    // Compute a locationCoordinate property that’s useful for interacting with the MapKit framework.
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
