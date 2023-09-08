class VirtualBankingSystem{
    var accountType = ""
    func welcomeCustomer() {
        print("Welcome to the banking system!")
    }
    func onboardCustomerAccountBanking(){
        print("What kind of account do you want to open?")
        print("1. Debit account")
        print("2. Credit account")
    }
    func makeAccount(_ numberPadKey: Int){
        print("Your selection is \(numberPadKey)")
        switch numberPadKey {
        case 1:
            accountType = "debit"
        case 2:
            accountType = "credit"
        default:
            print("wrong type of input: \(numberPadKey)")
            return
        }
        print("You have opened a \(accountType) account. ")
    }
}
var virtualAccount = VirtualBankingSystem()
virtualAccount.welcomeCustomer()
repeat{
    virtualAccount.onboardCustomerAccountBanking()
    let userInput = Int.random(in: 1...3)
    virtualAccount.makeAccount(userInput)
}while virtualAccount.accountType == ""

//bank account operation

