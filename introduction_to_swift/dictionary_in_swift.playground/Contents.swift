//set the value of the dictionary by setting the value to [:]
var weeklyTemperature: [String:Int] = [:]
weeklyTemperature = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]
//somehow the fukin dictionary value return an optional when we trying to access it
print("The temperature on Monday is \(weeklyTemperature["Monday"]) °F ")
//So we have to force unwrapping the shit to modifying the value
weeklyTemperature["Monday"]! += 20
print("The temperature on Monday is \(weeklyTemperature["Monday"]!)°F ")
//use optional binding to evaluate if the dictionary contains a specific key or value
if let sundayTemp = weeklyTemperature["Sunday"]{
    print("The temperature on Sunday is \(sundayTemp) °F")
}else{
    weeklyTemperature["Monday"] = 100
    print("The temperature on sunday is \(weeklyTemperature["Monday"]!) °F")
}
//reset the dictionary
if weeklyTemperature.count == 7 {
    weeklyTemperature = [:]
    print(weeklyTemperature)
}
//change the value of a key
weeklyTemperature.updateValue(69, forKey: "Monday")
print(weeklyTemperature)
