import Foundation 

func calculate(in1:Int, in2:Int, operation:(Int, Int) -> Int) -> Int {
    return operation(in1, in2) // labels would be extraneous! 
}

func add( n1:Int,  n2:Int) -> Int { // if we add external labels, it doesn't hurt anything 
    return n1 + n2
}

func mult(n1:Int,  n2:Int) -> Int { // if we add external labels, it doesn't hurt anything
    return n1 * n2
}

print(calculate(in1:2, in2:3, operation:add))
print(calculate(in1:2, in2:3, operation:mult))