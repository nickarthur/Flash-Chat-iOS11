//
//  Light.swift
//  Flash Chat
//
//  Created by Larry Nickerson on 9/2/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

protocol Light {
    var lightID: String { get set }
    var type: LightType { get set }
    
    var isOn: Bool { get set }
    var isDetected: Bool { get set }
    
    var isGelled: Bool { get set }
    var gelDescription: String? { get set }
}

protocol RGBSettable {
    var rgbSetting:UInt32 {get set}
}

protocol Kelvin5500Settable {
    var kelvin5500Setting:UInt32 {get set}
}

protocol Kelvin3200Settable {
    var kelvin3200Setting: UInt32 {get set}
}

enum LightType {
    case continuous
    case strobe
    case bleContinuous
    case bleStrobe
}
