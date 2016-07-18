let length = 10
let width = 12

func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width;
    
    return area;
}

let areaOfRoom1 = calculateArea(15, width: 22)

// External name

func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)"
}

sayHello(to: "Pasan", and: "Gabe")


// Default values + Tuples

func carpetCostCalculator(length length: Int, width: Int, carpetColor: String = "tan") -> (price: Int, carpetColor: String) {
    // Gray 1
    // Tan 2
    // Deep Blue 4
    let area = calculateArea(length, width: width)
    var price: Int
    
    switch carpetColor {
        case "gray": price = area * 1
        case "tan": price = area * 2
        case "blue": price = area * 4
        default: price = 0
    }
    
    return (price, carpetColor)
}


let result = carpetCostCalculator(length: 10, width: 20) // Tan

result.price
result.carpetColor

// Scope