//
//  Person.swift
//  __PROJNAME__
//  
//  Created by NickArthur Night on 2018.
//  Copyright (c) 2018 inViRt Studios . All rights reserved.
//


import Foundation

class Person: NSObject {
	var firstName: String
	var lastName: String
	var address: Address?
	var email: String?
	var phone: String?

	init(lastName:String, firstName:String) {
		self.lastName = lastName
		self.firstName = firstName
		super.init()
	}
}
