import Foundation

var width: Float = 5.2
var height: Float = 6.5

var bucketsOfPaint : Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceil(numberOfBuckets)
        return Int(roundedBuckets)
        
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("This amount of paint can cover an area of \(areaCanCover)")
    }
}

print(bucketsOfPaint)

bucketsOfPaint = 10



