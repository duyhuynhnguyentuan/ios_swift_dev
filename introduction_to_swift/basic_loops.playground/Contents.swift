//loop that iterates over a range
for dice in 1...5 {
    print("Roll a \(dice)")
}

//loop through a string
let name = "DUYHUYNH"
for word in name {
    print(word)
}

//roll a double dice (both dice has the same value)
var firstDice = 0
var secondDice = 0
var times = 0
repeat {
  times += 1
  firstDice = Int.random(in: 1...6)
  secondDice = Int.random(in: 1...6)
} while firstDice != secondDice
print("It takes you \(times) times to roll a double dice with the value of \(firstDice)")

//Create a game restriction
 let levels = 10
let bonusLevel = 3
let freeLevels = 4
for level in 1...levels {
  
    if level == bonusLevel {
        print("Skipped bonus level 3")
        continue
    }
    print("Level played \(level)")
    if level == freeLevels {
        print("You have reached maximum \(freeLevels) free levels, buy the game to play the other \(level-freeLevels)")
        break
    }
}
