let day = "Monday"
let dailyTemperature = 75
print("Today is \(day), and the temperature is \(dailyTemperature)")

var temperature = 75
print("The morning temperature is at \(temperature) F")
temperature = 80
print("The afternoon temperature is at \(temperature) F")

let weeklyTemperature = 85
temperature = weeklyTemperature
print("The average temperature is \(temperature)")

print("------------------")

let levelScore = 10
var gameScore = 0
gameScore += levelScore
print("The game's score is \(gameScore).")
var levelBonusScore = 10.0
levelBonusScore = 20
print("The level's bonus score is \(levelBonusScore).")
gameScore += Int(levelBonusScore)
print("The game's final score is \(gameScore).")
let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10
let levelScoreDifference = levelHighestScore - levelLowestScore
let levelAverageScore = levelScoreDifference / levels
print("The level's average score is \(levelAverageScore).")
let averageLevelScore = Double(levelScoreDifference) / Double(levels)
print("The correct level's average score is \(averageLevelScore).")

