import UIKit
enum PastaTypes: Int, CaseIterable{
    case spaghetti = 8
    case penne = 10
    case ravioli = 11
    case rigatoni = 12

}
let cookingTime = PastaTypes.spaghetti.rawValue
print("Spaghetti will be perfectly cooked in \(cookingTime) minutes.")
func cookingPerfectPasta(pasta: PastaTypes) {
  let cookingTime = pasta.rawValue
  print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
}
cookingPerfectPasta(pasta: .rigatoni)
let totalCaseCount = PastaTypes.allCases.count
print(totalCaseCount)
enum PastaTypesA {
  case spaghetti(cookingTime: Int)
  case penne(cookingTime: Int)
  case ravioli(cookingTime: Int)
  case fusilli(cookingTime: Int)
  case rigatoni(cookingTime: Int)
}
var checkIfCooked = PastaTypesA.spaghetti(cookingTime: 8)
if cookingTime < 8 {
  print("Spaghetti is still not fully cooked...")
} else {
  print("Spaghetti is cooked, take it out of the water!")
}

//Using an enum inside a function allows you to write more succinct and expressive code. For instance, you can use a function to evaluate whether the pasta is cooked or if it needs more time. Since there are several pasta types that would need to be evaluated, a function allows you to streamline that process.
func checkIfCooked(for pasta: PastaTypesA) {
  switch pasta {
  case .spaghetti(let cookingTime):
    if cookingTime < 8 {
      print("Spaghetti is still not fully cooked...")
    } else {
      print("Spaghetti is cooked, take it out of the water!")
    }

  default: return
  }
}
checkIfCooked(for: .spaghetti(cookingTime: 9))

//The where statement checks for the condition where the condition is true. Suppose you print a message to the console where the cooking time for the spaghetti pasta is greater than or equal to 8 minutes. The where keyword can be used to evaluate conditions in a single line, as compared to if else statements that run across several lines.

func checkIfCooked2(for pasta: PastaTypesA) {
  switch pasta {
  case .spaghetti(let cookingTime) where cookingTime >= 8:
    print("Spaghetti is cooked, take it out of the water!")
  default: print("Pasta is not cooked.")
  }
}
checkIfCooked2(for: .spaghetti(cookingTime: 7))

//Work with raw and associated values
enum Ingredients: String{
    case lettuce = "Romaine Lettuce"
    case croutons = "Salted Croutons"
    case chicken = "Free Range Chicken"
}

let ingredient = Ingredients.lettuce

switch ingredient {
case .lettuce:
  print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces")
case .croutons:
  print("Our \(ingredient.rawValue) makes sure we do not have to use additional salt in our salads")
case .chicken: print("Our meals tastes better with \(ingredient.rawValue) to raise the quality")
}

enum RecipeInformation {
  case allergens(information: String)
}

let recipeInformation = RecipeInformation.allergens(information: "Peanuts, Milk, Gluten")

switch recipeInformation {
case .allergens(let information): print("The meal includes the following allergens: \(information)")
}
