import Foundation 

func calculate(in1:Int, in2:Int, operation:(Int, Int) -> Int) -> Int {
    return operation(in1, in2) // labels would be extraneous! 
}

// Shortening the syntax of closures
// step 1 infer data types we can infer the input datatypes
print(calculate(in1:2, in2:3, operation:{ ( n1,  n2) -> Int in // if we add external labels, it doesn't hurt anything 
    return n1 + n2
}))

// step 2 we can infer the output data type
print(calculate(in1:2, in2:3, operation:{ ( n1,  n2) in 
    return n1 + n2
}))

// step 3 we can use $0 $1 ... argument syntax -- we must omit the `in` keyword
print(calculate(in1:2, in2:3, operation:{ ( $0,  $1)  
    return $0 + $1
}))

// step 4 we can use $0 $1 ... argument syntax -- we must omit the `in` keyword
print(calculate(in1:2, in2:3, operation:{ ( $0,  $1)   
    return $0 + $1
}))

// step 5 we can omit the return statement 
print(calculate(in1:2, in2:3, operation:{  $0 + $1 }))

// step 6 we can convert to a trailing closure
print(calculate(in1:2, in2:3){$0 + $1})


// more examples using the multiply operation
// MULTIPLY

print(calculate(in1:2, in2:3, operation:{ (n1:Int,  n2:Int) -> Int in 
    return n1 * n2
}))

// we can get rid of return and also omit closure param and return types
print(calculate(in1:2, in2:3, operation:{ (n1,  n2) in
     n1 * n2
}))

// or we can use $0 $1 ... keeping the retrun is not necessary
print(calculate(in1:2, in2:3, operation:{ return $0 * $1
}))


// so we have 
print(calculate(in1:2, in2:3, operation:{  $0 * $1
}))

// finally we can use trailing closures
print(calculate(in1:2, in2:3) {$0 * $1} )
