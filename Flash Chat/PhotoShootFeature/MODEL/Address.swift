//
//  Address.swift
//  __PROJNAME__
//  
//  Created by NickArthur Night on 2018.
//  Copyright (c) 2018 inViRt Studios . All rights reserved.
//


import Foundation

class Address: NSObject {
	var street: String
	var city: String
	var state: String
	var zip: String

	init(state:String, city:String, street:String, zip:String) {
		self.state = state
		self.city = city
		self.street = street
		self.zip = zip
		super.init()
	}
}
