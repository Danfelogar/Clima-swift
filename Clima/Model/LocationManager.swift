//
//  LocationManager.swift
//  Clima
//
//  Created by Daniel Felipe on 16/09/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation
import CoreLocation


protocol LocationManagerDelegate: CLLocationManagerDelegate {
    
    func locationManager(
        _ manager: CLLocationManager,
        didUpdateLocations locations: [CLLocation]
    )
    
    func didUpdateLocationsDelegate()
}

struct LocationManager {
    let locationManager = CLLocationManager()
    
    
    var requestWhenInUseAuthorization = locationManager.requestWhenInUseAuthorization()
    var requestLocation = locationManager.requestLocation()
}
