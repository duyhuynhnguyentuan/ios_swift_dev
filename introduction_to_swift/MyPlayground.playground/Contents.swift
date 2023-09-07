struct TableReservation {
  var name: String
  var tableNumber: Int

  mutating func updateBooking(_ updatedName: String) {
      name = updatedName
  }
    
}
var reserve = TableReservation(name: "Matcha", tableNumber: 1)
print(reserve)
reserve.updateBooking("Dau Tay")
print(reserve)

