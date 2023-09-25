import UIKit

class Dish{
    private let name: String
    private var ingredients: [String]
    init(name: String, ingredients:  [String]){
        self.name = name
        self.ingredients = ingredients
    }
    func printInfo(){
        print(name)
        print(ingredients)
    }
}

final class Appetizer: Dish{
    override func printInfo() {
        print("Appetizer")
        super.printInfo()
    }
}

final class MainDish: Dish {
}

for _ in 1..<5 {
    let randomNumber = Int.random(in: 0...1)
    let dish: Dish
    if randomNumber == 0 {
        dish = Appetizer(
            name: "Margherita Flatbread",
            ingredients: [
                "Margherita",
                "Flatbread",
            ]
        )
    } else {
        dish = MainDish(
            name: "Super Spaghetti",
            ingredients: [
                "Spaghetti",
                "Tomato sauce",
            ]
        )
    }
    if let appetizerDish = dish as? Appetizer{
        appetizerDish.printInfo()
    }
    //This conditional statement attempts to type cast dish as an AppetizerDish. If successful (i.e., dish is an instance of AppetizerDish), it assigns it to the constant appetizerDish, and then calls the printInfo() method on it. This allows you to print information specific to AppetizerDish instances.
    if dish is MainDish{
        print("Main dish")
    }
}
