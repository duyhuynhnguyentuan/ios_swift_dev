let levelScores = [10, 20, 30, 40, 50, 60, 70]
//save level,score as a tuple
for (level,score) in levelScores.enumerated(){
    print("The score for level \(level+1) is \(score)")
}

var gameScore = 0
for level in levelScores {
    gameScore += level
}
print("The game score is \(gameScore)")

let weeklyTemperatures = [
  "Monday": 70, "Tuesday": 75, "Wednesday": 80,
  "Thursday": 85, "Friday": 90, "Saturday": 95, "Sunday": 100,
]
for (day, temp) in weeklyTemperatures {
        print("The weather on \(day) is \(temp)")
}
//using synchronize array
var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
var temperatures = [70, 75, 80, 85, 90, 95, 100]
for index in 0...6{
    print("The temperature on \(days[index]) is \(temperatures[index])")
}
//the better way than synchronize an array is by using zip
for (day, temperature) in zip(days, temperatures){
    print("The temperature on \(day) is \(temperature)")
}
//or maybe combining two arrays into a dictionary
let combinedArray = Dictionary(uniqueKeysWithValues: zip(days, temperatures))
for (dayx, temperaturex) in combinedArray{
    print("Day: \(dayx), Temp: \(temperaturex)")
}
