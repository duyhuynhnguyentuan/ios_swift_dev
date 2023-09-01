let temperature = "Fahrenheit"

if temperature == "Fahrenheit" || temperature == "Celsius" {
    print("The weather app is configured properly")
    if temperature == "Fahrenheit" {
        print("The weather app works with Fahrenheit degree")
    }else{
        print("The weather app works with Celsius degree")
    }
}
else{
    print("The weather app is configured improperly")
}

switch temperature {
case "Fahrenheit" : print("Fahrenheit lmao")
case "Celsius" : print("Celsius lmao")
default: print("improperly configured")
}
