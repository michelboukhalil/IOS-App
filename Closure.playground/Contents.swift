import UIKit

//Functions
func calculator(n1:Int , n2:Int, operation:(Int,Int)->Int) -> Int{
    return operation(n1 , n2)
}

func add (no1:Int , no2:Int) -> Int{
    return no1 + no2
}

calculator(n1: 5, n2: 3, operation: add)


//Closure


let result = calculator(n1: 2, n2: 3) { $0 * $1 }
print(result)


let array = [6,3,2,4,9,11]

print(array.map{$0 + 1})

let newArray = array.map{"\($0)"}
print(newArray)


