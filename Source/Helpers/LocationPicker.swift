//
//  LocationPicker.swift
//  ewersee
//
//  Created by Mikhail Kazan on 31.08.20.
//  Copyright © 2020 Mikhail Kazan. All rights reserved.
//

import Foundation
import CoreLocation

class LocationPicker: CLLocationManager{
    static let shared = LocationPicker()
    
    private override init(){
        
    }
    
    public func getLastLocation() -> CLLocation{
        var location = CLLocation()
        if (LocationPicker.authorizationStatus() == .authorizedWhenInUse ||
            LocationPicker.authorizationStatus() == .authorizedAlways) {
            if LocationPicker.shared.location != nil{
                location = LocationPicker.shared.location!
            }            
        }
        return location
    }
    
}
