
//Creating a Function

//Function without input nor output

//func getMilk(){
//    print("Go to the Shops")
//    print("Buy 2 cartons of milk")
//    print("Pay £2")
//    print("Go home")
//}

//Function with input but without output

//func getMilk(howManyMilkCartons : Int){
//    print("Go to the Shops")
//    print("Buy \(howManyMilkCartons) cartons of milk")
//
//    let priceToPay = howManyMilkCartons * 2
//
//    print("Pay £\(priceToPay)")
//    print("Go home")
//}

//Function with input and output

func getMilk(howManyMilkCartons : Int , howMuchMoneyRobotWasGiven : Int) -> Int {
    print("Go to the Shops")
    print("Buy \(howManyMilkCartons) cartons of milk")

    let priceToPay = howManyMilkCartons * 2

    print("Pay £\(priceToPay)")
    print("Go home")
    
    let change = howMuchMoneyRobotWasGiven - priceToPay
    
    return change
}


//Calling a Function
//getMilk(howManyMilkCartons: 4)
//getMilk(howManyMilkCartons: 1)
//getMilk(howManyMilkCartons: 12)

var amountOfChange = getMilk(howManyMilkCartons: 5, howMuchMoneyRobotWasGiven: 20)
print("Hello Master, here's your £\(amountOfChange) change")
