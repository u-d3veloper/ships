var name = "Alice"
let isSwiftFun = true

// Numbers ? 

let number1 = 10
let decimalNumber = 3.14

let longNumber: Int64 = 1234567890123456789

// Transform temperature 

let celcius = 25.0

let fahrenheit = celcius * 9 / 5 + 32

print("\(celcius) degrees Celsius is equal to \(fahrenheit) degrees Fahrenheit.")


// String interpolation
let firstName = "John"
let lastName = "Doe"

print("Full name: \(firstName) \(lastName)")


// Type safety

// This will cause an error because Swift is type-safe
let age: Int = 30
let ageInString: String = "30"
// Uncommenting the following line will cause a compile-time error
// let invalidAge: Int = ageInString

