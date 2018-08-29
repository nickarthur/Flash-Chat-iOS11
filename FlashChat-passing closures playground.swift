import Foundation 

func calculate(in1:Int, in2:Int, operation:(Int, Int) -> Int) -> Int {
    return operation(in1, in2) // labels would be extraneous! 
}

print(calculate(in1:2, in2:3, operation:{ ( n1:Int,  n2:Int) -> Int in // if we add external labels, it doesn't hurt anything 
    return n1 + n2
}))
print(calculate(in1:2, in2:3, operation:{ (n1:Int,  n2:Int) -> Int in // if we add external labels, it doesn't hurt anything
    return n1 * n2
}))