//
//  PhotoShoot.swift
//  __PROJNAME__
//  
//  Created by NickArthur Night on 2018.
//  Copyright (c) 2018 inViRt Studios . All rights reserved.
//


import Foundation
import CoreLocation

struct PhotoShoot {
	var photoBucketURL: URL
	var sessionID: String
	var photographer: Photographer
	var description: String?
	var shootDate: Date
	var hostStudio: Studio?
	var scenes: [Scene]?
	var isOnLocation: Bool?
	var lightsList: [Light]
	var shootGeolocation: CLLocation?
}
