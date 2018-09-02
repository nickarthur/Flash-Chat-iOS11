//
//  BLELight.swift
//  Flash Chat
//
//  Created by Larry Nickerson on 9/2/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

// swift struct
struct BLELight : RGBSettable, Kelvin5500Settable, Kelvin3200Settable, Light {
    var isOn: Bool
    
    var isDetected: Bool
    
    var lightID: String
    
    var type: LightType = .bleContinuous
    
    var isGelled: Bool = false
    var gelDescription: String?
    
    var rgbSetting: UInt32 = 0
    
    var kelvin3200Setting: UInt32
    var kelvin5500Setting: UInt32
    
    var brand: String
    var model: String
    var name: String
}
