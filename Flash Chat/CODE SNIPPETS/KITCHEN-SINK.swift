//
//  KITCHEN-SINK.swift
//  Flash Chat
//
//  Created by Larry Nickerson on 9/1/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class KitchenSink: NSObject {
    
    // junk takes a completion handler that takes an Int
    // and retruns nothing i.e. Void
    func junk( completion: (_ a:Int) -> Void) -> Void {
        
    }
    
    func caller1() {
        // call junk passing int the closure
        junk ( completion: { (arg:Int) -> Void    in
            print (arg)
        })
    }
    
    // call junk with a trailing closure
    func caller2() {
        junk { (_ a:Int) -> Void in
        print(a)
        }
        
    }

    // swift computed constant
    let comutedConstant: Int = {
        let val = 5 + 3
        return val
    }()
    
    var someClassOrStructProperty: Float = 0.0
    
    // swift Computed Variable Get and Set Declaration
    var swiftComputedVariable: Float {
        get {
            return Float(Double.pi)
        }
//            set {
//                someClassOrStructProperty = newValue
//            }
        set(newValue) {
            someClassOrStructProperty = newValue + 4.2
        }
    } // end of wift Computed Variable
    
    // swift computed variable get declaration
    var swiftComputedVariableGetter: String {
        return "Yo!"
    }
    
    // Swift Convenience Initializer
    convenience init(someClassOrStructProperty:Float) {
        self.init()
        self.someClassOrStructProperty = someClassOrStructProperty
    }
    
    func deferIt(inStuff: String) -> Float32 {
        defer {
            print ("deferred  until leaving the block of code: \(inStuff)")
        }
        return Float32(bitPattern: UInt32(255))
    }

    // Swift Deinitializer Declaration
    deinit {
        print("cleanup")
    }
    
    enum VendingMachineError: Error {
        case invalidSelection
        case insufficientFunds(coinsNeeded: Int)
        case outOfStock
    }
    
    func doCatch() -> Void  {
        do {
            throw VendingMachineError.invalidSelection
        } catch  VendingMachineError.invalidSelection {
            print("caught error")
        } catch is Error {
            print("catchall")
        }
    }
    
    enum BLEDeviceType {
        case ContinuousLight
        case Flash
        case Button
        case Camera
    }
    
    struct BLEDeviceEntityData {
        var name: String = ""
    }
    
    let BLEDeviceList : [BLEDeviceEntityData] = [
        BLEDeviceEntityData(name:"Key"),
        BLEDeviceEntityData(name:"Fill")
    ]
    
    func forLoop() -> Void  {
        for device in BLEDeviceList {
            print("Device: \(device)")
        }
    }
    
    enum KristoffError : Error {
        case ClumsyWayHeWalks
        case GrumpyWayHeTalks
        case PearShapedSquareShapedWeirdnessOfHisFeet
        case NotWashedSince(days: Int)
    }
    
    func gaurdIt(expectedDays: Int?) throws -> String  {
        
        guard  let days = expectedDays else {return "sad"}
        
        guard days > 0 else {
            throw KristoffError.NotWashedSince(days: days)
        }
        
        guard let happiness = expectedDays  else { return "sad" }
        
        return "Got what was expected: \(days) is really \(happiness)"
        
    }
    
    func ifFunc(a:Int, b:Int, c:Int?) -> Void {
        if a < b {
            print("true always")
        }
        
        if a == b {
            print("true")
        } else {
            print("False")
        }
        
        if let c = c {
            print("we got a c value: \(c)")
        }
    }
    
    //option set
    struct ShippingOptions: OptionSet {
        let rawValue: Int
        
        static let nextDay    = ShippingOptions(rawValue: 1 << 0)
        static let secondDay  = ShippingOptions(rawValue: 1 << 1)
        static let priority   = ShippingOptions(rawValue: 1 << 2)
        static let standard   = ShippingOptions(rawValue: 1 << 3)
        
        static let express: ShippingOptions = [.nextDay, .secondDay]
        static let all: ShippingOptions = [.express, .priority, .standard]
    }
    
    func shipItWithOptions() -> Void {
        let singleOption: ShippingOptions = .priority
        let multipleOptions: ShippingOptions = [.nextDay, .secondDay, .priority]
        let noOptions: ShippingOptions = []
        
        let purchasePrice = 87.55
        
        var freeOptions: ShippingOptions = []
        
        if purchasePrice > 50 {
            freeOptions.insert(.priority)
        }
        
        if freeOptions.contains(.priority) {
            print("You've earned free priority shipping!")
        } else {
            print("Add more to your cart for free priority shipping!")
        }
        // Prints "You've earned free priority shipping!"
    } // end of shipItWithOptions
    
} // end of class


// protocol with properties
protocol adoptable {
    // read-only property
    var smiley: Bool {get set} // smiley

    func isAdorable(kittyName: String) -> Bool
} //adoptable


    //Examples protocol adoption with gettable property

protocol FullyNamed {
    var fullName: String { get }
}
//1. Gettable — Constant Property

struct Detective1: FullyNamed {
    let fullName: String
}

//2. Getable — Variable Property

struct Detective2: FullyNamed {
    var fullName: String
}


//3. Getable — Computed Property

struct Detective3: FullyNamed {
    fileprivate var name: String
    var fullName: String {
        return name
    }
}


//4. Gettable — Private Set

public struct Detective4: FullyNamed {
    public private(set) var fullName: String
    public init(fullName: String) {
        self.fullName = fullName
    }
    public mutating func renameWith(fullName: String) {
        self.fullName = fullName
    }
}


//5. Gettable & Settable — Computed Property

struct Detective5: FullyNamed {
    fileprivate var name: String
    var fullName: String {
        get {
            return name
        }
        set {
            name = newValue
        }
    }
}

class StuffClass {
    
    func doStuff1(){
        let hercule = Detective1(fullName: "Hercule Poirot")
        print(hercule.fullName) // returns "Hercule Poirot"
    }
    
    func doStuff2(){
        var bond = Detective2(fullName: "Bond")
        print(bond.fullName) // returns "Bond"
        bond.fullName = "James Bond"
        print(bond.fullName) // returns "James Bond”
    }
    
    func doStuff3() {
        let batman = Detective3(name: "Bruce Wayne")
        print(batman.fullName) // returns "Bruce Wayne"
    }
    
    func doStuff4(){
        var holmes = Detective4(fullName: "Holmes")
        print(holmes.fullName) // returns "Holmes"
        holmes.renameWith(fullName: "Sherlock Holmes")
        print(holmes.fullName) // returns "Sherlock Holmes"
    }
    
    func doStuff5() {
        var Payne = Detective5(name: "Payne")
        print(Payne.fullName) // returns "Payne"
        Payne.fullName = "Max Payne"
        print(Payne.fullName) // returns "Max Payne"
    }
} // end StuffClass


class AnotherClass {
    var name:String
    required init(name:String) {
        self.name = name
    }

}

class subClass : AnotherClass {
    
}

class SwiftSubClass: Any {
    
}


typealias SomeClosureSignature = () -> Void
typealias SnotherClosureMethodSignature = (Int, Bool, String, SwiftSubClass) -> Void
typealias AFunctionType = () -> Bool

// very bad not down here... not ... not right here
import UIKit

class ViewController {
    
    @IBAction func unwindToAnywhere(_ sender: UIStoryboardSegue) {
        
        let sourceViewController = sender.source
        // Use data from the view controller which initiated the unwind segue
        if true == sourceViewController.definesPresentationContext {
            print("")
        }
    }
    
    func PadlockItUp(heart:String) -> Void {
        let lyrics : [String] =  ["You Blew It","No Moe","I'm Lockin' Up"]
        var index = 0
        
        while  lyrics.count >= index {
            print("\(lyrics[index])")
            index += 1
        }
    }
}



