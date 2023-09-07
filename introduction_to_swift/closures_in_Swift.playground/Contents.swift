var num1 = 900
var num2 = 100
var maxNum = {(num1: inout Int, num2: inout Int) -> Int in
    return num1 > num2 ? num1 : num2
}
func maxz(_ num1: inout Int, _ num2: inout Int) -> Int{
    return num1 > num2 ? num1 : num2
}
print("Maximum num is \(maxNum(&num1,&num2))")
print("Max is: \(maxz(&num1, &num2))")

///
let letters = ["A","B","C","D"]
let sorted = letters.sorted(by: {(s1,s2) in return s1 > s2})
let sorted1 = letters.sorted(by: {$0 < $1} )
//$0 and $1 are called shorthand notations
//$0 represents for first element and $1 for second
print(sorted)
print(sorted1)
