//
//  Phtographer.swift
//  __PROJNAME__
//  
//  Created by NickArthur Night on 2018.
//  Copyright (c) 2018 inViRt Studios . All rights reserved.
//


import Foundation

class Photographer: Person {
    
	var photographerID: String  = ""
	var studio: Studio?

    override init(lastName:String?, firstName:String?) {
        // if first name or lastName is not specified us
        // empty string
        super.init(lastName: lastName ?? "",  firstName: firstName ?? "")
    }
}
