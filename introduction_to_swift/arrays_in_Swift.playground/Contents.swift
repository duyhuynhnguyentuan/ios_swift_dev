//declare an empty array by adding types
var levelScores: [Int] = []
if levelScores.count == 0 {
  print("Start playing the game!")
}
let firstLevelScore = 10
//append to add an element at the end of the array
levelScores.append(firstLevelScore)
print("The first level's score is \(levelScores[0]).")
let levelBonusScore = 40
levelScores[0] += levelBonusScore
print("The first level's score is \(levelScores[0]).")
let freeLevelScores = [20, 30]
//concatenate two arrays
levelScores += freeLevelScores
print(levelScores)
//insert(value, index) insert a value to a position of an array
levelScores.insert(70, at: 0)
print(levelScores)
//remove a value from an array
levelScores.remove(at: 3)
print(levelScores)
let freeLevels = 3
if levelScores.count == freeLevels {
  print(
    "You have finished playing the free version of the game. Buy the game to play its full version."
  )
  levelScores = []
  print("Game restarted!")
}else{
    print("Damn bro you somehow hack through the freeLevels")
}
