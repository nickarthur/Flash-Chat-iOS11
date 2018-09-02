//
//  Model.swift
//  __PROJNAME__
//  
//  Created by NickArthur Night on 2018.
//  Copyright (c) 2018 inViRt Studios . All rights reserved.
//


import Foundation

class Model: Person, PhotoSubject {

    // MARK: - PhotoSubject protocol
    // describe the model makeup, outfit, etc until i decide
    // to break out model info into separate fields/properties
    var description: String?
    
    override init(lastName:String?, firstName:String?) {
        // if first name or lastName is not specified us
        // empty string
        super.init(lastName: lastName ?? "",  firstName: firstName ?? "")
    }

}
