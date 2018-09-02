//
//  Placement.swift
//  Flash Chat
//
//  Created by Larry Nickerson on 9/2/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation
import ARKit
import CoreLocation

protocol ArPlaceable {
    var position:SCNVector3? { get set }
}

protocol GeoLocatable {
    var geoLocation: CLLocation? { get set }
}
