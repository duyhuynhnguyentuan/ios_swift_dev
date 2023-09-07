struct Recipe{
    let name: String
    var ingredients : Set<String>
    let steps: [String]
    func printInformation() {
        print("Name: \(name)")
        print("Ingredients: \(ingredients)")
        for (index, step) in steps.enumerated(){
            print("Step \(index+1): \(step)")
        }
    }
}
let phoRecipe = Recipe(name: "Pho Viet Nam", ingredients: [
    "Banh Pho",
    "Hanh Tay",
    "Thit Bo"
    ], steps: [
    "Pre-boiling the beef bones and meat",
    "Charring the ginger and onions",
    "Toasting the spices",
    "Adding fish sauce"
    ])
phoRecipe.printInformation()
