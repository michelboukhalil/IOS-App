import UIKit

func bmiCalculator(height : Float , mass : Float) -> String{
    
    let BMI = mass / pow(height, 2)
    let shortBMI = String(format: "%.2f", BMI)
    
    if BMI > 25{
        return "You are overweight, your BMI is \(BMI) "
    }
    else if BMI > 18.5 && BMI <= 25 {
        return "You have a normal weight, your BMI is \(BMI)"
    }
    else {
        return "You are underweight , your BMI is \(BMI)"
    }
}

bmiCalculator(height: 1.67, mass: 70)
