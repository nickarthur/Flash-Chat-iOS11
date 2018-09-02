//
//  Scene.swift
//  __PROJNAME__
//  
//  Created by NickArthur Night on 2018.
//  Copyright (c) 2018 inViRt Studios . All rights reserved.
//


import Foundation

class Scene: NSObject {
	var title: String = "Beach Setting"
	var description: String = "a sunsetty evening"
	var subject: [Subject] = [Subject]()
	var lightSetups: [LightSetup]
	var photosURL: URL?

	init(lightSetups:[LightSetup]) {
		self.lightSetups = lightSetups
		super.init()
	}
}
