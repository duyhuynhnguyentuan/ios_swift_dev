var goldBars = 0
func unlockTreasureChest(inventory: Int) -> Int {
  inventory + 100
}
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)

var goldBarscc = 0
func unlockTreasure(_ inventory: inout Int){
    inventory += 100
}
unlockTreasure(&goldBarscc)
print(goldBarscc)


//writing succinctly expressive functions
var money = 0
func incrementMoney(_ money: inout Int, by amount: Int = 100){
     money += amount
}
incrementMoney(&money)
print(money)
incrementMoney(&money)
print(money)
incrementMoney(&money, by: 50)
print(money)
