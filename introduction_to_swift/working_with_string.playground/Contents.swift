let day = "Monday"
print("Today is \(day)")
let hour = 6
let minutes = 15
let period = "PM"
var time = "Time is " + ": " + String(hour) + ":" + String(minutes) + period
print(time)
let timezone = "BKK"
time += " \(timezone)"
print(time)
let shortDay = String(day.prefix(3))
func printDay(day: String) -> Void{
    print("Today is : \(shortDay)")
}
printDay(day: shortDay)


