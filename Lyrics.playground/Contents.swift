import UIKit

func beerSong(_ numberOfBottles:Int) -> String{
    var lyrics: String = ""
    
    for numbers in (1...numberOfBottles).reversed() {
        
        var newLine: String = ""
        
        if numbers > 1 {
            
         newLine = "\n\(numbers) bottles of beer on the wall, \(numbers) bottles of beer.\n Take one down and pass it around, \(numbers - 1) bottles of beer on the wall.\n\n"
        }
        else{
            newLine = "\n \(numbers) bottle of beer on the wall, \(numbers) bottles of beer.\n Take one down and pass it around, No More bottles of beer on the wall.\n\n"
        }
        
        lyrics += newLine
    
    
    
    
    
}
    lyrics += "\n No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, \(numberOfBottles) bottles of beer on the wall.\n"
    
    return lyrics
}

print(beerSong(50))
