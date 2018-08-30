import Foundation 

let array = [6,3,2,9,4,1]
print (array) // orig

func addOne(n1:Int) -> Int {
    return n1 + 1
}
// original named function
var newArray = array.map(addOne)
print (newArray) // new
// convert to closure and print

//step 1 convert to basic nameless closure
newArray = array.map({ (n1:Int) -> Int in
    return n1 + 1
})
print (newArray) // new

//step 2 inferred types
newArray = array.map({ (n1)  in
    return n1 + 1
})
print (newArray) // new

//step 3  use $0 and lose the in and return
newArray = array.map({ $0 + 1})
print (newArray) // new

//step 4  convert to trailing closure
newArray = array.map(){ $0 + 1}
print (newArray) // new

//step 5  convert to trailing closure without () when there
//are no other arguments in the calling function
newArray = array.map{ $0 + 1}
print (newArray) // new


