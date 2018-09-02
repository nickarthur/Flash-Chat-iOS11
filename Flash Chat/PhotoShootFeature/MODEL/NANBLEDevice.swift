//
//  NANBLEDevice.swift
//  Flash Chat
//
//  Created by Larry Nickerson on 9/2/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

// Base class for all ble devices e.g. Light, Button, Camera, Phone, Sensor etc
class NANBLEDevice {
    var isOn: Bool = false
    var isDetected: Bool = false
    
    var services: [Any]?
    var characteristics: [Any]?
}
