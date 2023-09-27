enum calculatorError: Error{
    case divisionByZero
}

class Calculator {
    func divide(x: Double, y: Double) throws -> Double{
        if y == 0 {
            throw calculatorError.divisionByZero
        }
        return x/y
    }
}

var calculator = Calculator()

do{
    let successResult = try calculator.divide(x: 0, y: 10)
    print(successResult)
    let failResult = try calculator.divide(x: 10, y: 0)
}catch calculatorError.divisionByZero{
    print("Division by zero detected and not allowed")
}
