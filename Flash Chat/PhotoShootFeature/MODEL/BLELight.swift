//
//  BLELight.swift
//  Flash Chat
//
//  Created by Larry Nickerson on 9/2/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation
import ARKit
import CoreLocation

// swift struct
class BLELight : NANBLEDevice, Light, RGBSettable, Kelvin5500Settable, Kelvin3200Settable,  GeoLocatable, ArPlaceable {
    
    var lightID: String = ""
    
    var position: SCNVector3?
    
    var geoLocation: CLLocation?
    
    var role: LightRole?
    
    var type: LightType = .bleContinuous
    
    var isGelled: Bool = false
    var gelDescription: String?
    
    // color temperature settings
    var rgbSetting: UInt32 = 0
    var kelvin3200Setting: UInt32 = 0
    var kelvin5500Setting: UInt32 = 0
    
    var brand: String = ""
    var model: String = ""
    var name: String = ""
}
