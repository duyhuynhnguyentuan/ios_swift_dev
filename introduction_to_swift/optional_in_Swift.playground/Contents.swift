var password = "1234"
let passcode = Int(password)
//using exclamation mark to unwrap an optional value
print("The passcode of the app is \(passcode!).")

//using optional binding to check if the password is valid in case it it nil
password = "Hello world"
if let code = Int(password){
    print("The passcode of the app is \(code)")
}else{
    print("Invalid passcode")
}
//set a  default passcode
let accessCode: Int
if let code = Int(password){
    accessCode = code
}else{
    accessCode = 1111
}
print("The passcode of the app is \(accessCode).")

//set a default two passcode
let firstPassword = "Hello"
let secondPassword = "World"
let firstPasscode: Int
let secondPasscode :Int
if let firstCode = Int(firstPassword),
let secondCode = Int(secondPassword)
{
    firstPasscode = firstCode
    secondPasscode = secondCode
}else{
    firstPasscode = 1111
    secondPasscode = 2222
}
print(
  "The first passcode of the app is \(firstPasscode) and the second passcode of the app is \(secondPasscode)."
)



