var todo: [String] = ["a", "b", "c"]
todo.append("d")
todo = todo + ["e", "f"]

todo.insert("inserted", atIndex: 2);

todo.removeAtIndex(3)

todo.count

// Dictionaries

var airportCodes = [
    "PPN": "Popayan",
    "MDE": "Rio N",
    "BOG": "Bogota",
    "FAKE": "Fake airport",
    "FAKE2": "Fake airport2",
]

airportCodes["PPN"]

airportCodes.updateValue("MDE", forKey: "Rio Negro")

airportCodes.removeValueForKey("FAKE")

airportCodes["FAKE2"] = nil;

for t in todo {
    print(t)
}

for n in 1...10 {
    print(n)
}

var x = 0

while x < 10 {
    print(x)
    x++
}

var y = 0

repeat {
    print(y)
    y++
} while y < 10