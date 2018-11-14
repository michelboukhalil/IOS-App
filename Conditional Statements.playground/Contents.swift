import UIKit

func loveCalculator(myName : String , theirName : String) -> String{
    
    let loveScore = Int.random(in: 0 ... 100)
    
    if loveScore > 80{
        return "Your love score is \(loveScore) , you love each other very well"
    }
    
    else if loveScore > 40 && loveScore <= 80 {
        return "Your love score is \(loveScore) , you like each other"
    }
    
    else {
        return "Your love score is \(loveScore) , you hate each other"
    }
    
    
    
}

print(loveCalculator(myName: "Michel", theirName: "Chantal"))
