struct Order{
    let price: Int
    let location: String
}

func totalRevenueOf(orders: [Order], location: String)-> Int{
    //let ordersAtLocation = orders.map { order in
    //return order.location
    //}
    //the shorter version of map closure would be using $0 default parameter representing the order instead of defining an explicit order constant in closure as follow:
    let ordersAtLocation = orders.filter {$0.location == location}
    print("Orders' details at \(location):")
    print(ordersAtLocation)
    let orderPrices = ordersAtLocation.map { $0.price }
    print(orderPrices)
    //$0 and $1 are closure's first and second shorthand argument name
    return orderPrices.reduce(0) { $0 + $1 }
}

let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York"),
]
let result = totalRevenueOf(orders: orders, location: "New York")
print(result)
