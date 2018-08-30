import Foundation

class Firebase {
    func createUser(username:String, password:String, completion:(Bool, Int) -> Void) {
        
        //do some long-running process
        // fake it till you make it
        let isSuccess = true
        let userID = 123
        // call the completion handler
        completion(isSuccess, userID)
    }
}

class MyApp {

    func registerButtonPressed() {
        let firebase = Firebase()

        firebase.createUser(username: "Nick", password:"123", completion:completed)

        // converted to use basic trailing closure syntax
        firebase.createUser(username: "Nick", password:"123") { 
            (isSuccess: Bool, userID: Int) in
            print("registration was successful: \(isSuccess)")
            print("userID: \(userID)")
        }

        // optionally convert to also use type inference
        firebase.createUser(username: "Nick", password:"123") { 
            (isSuccess, userID) in
            print("registration was successful: \(isSuccess)")
            print("userID: \(userID)")
        }
    }

    func completed(isSuccess: Bool, userID: Int) {
        print("registration was successful: \(isSuccess)")
        print("userID: \(userID)")
    }

    // converted to closure and substitue into firebase.createUser call above ^
    // { (isSuccess: Bool, userID: Int) in
    //     print("registration was successful: \(isSuccess)")
    //     print("userID: \(userID)")
    // }
}

let myApp = MyApp()
myApp.registerButtonPressed()