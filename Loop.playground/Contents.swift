import UIKit

let arrayOfNumber = [1,5,8,2,14,24,12]

var sum = 0

//normal for loop

for number in arrayOfNumber{
    sum += number
    print(sum)
}

//for loop with conditions

for number in 1..<10 where number % 2 == 0{
    print(number)
}
