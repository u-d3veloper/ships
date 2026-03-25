// If statement

enum Weather {
    case sunny
    case rainy
    case cloudy
}

let weather: Weather = .sunny

if weather == .sunny {
    print("It's a sunny day!")
} else if weather == .rainy {
    print("It's a rainy day!")
} else {
    print("It's a cloudy day!")
}


// Switch statement
switch weather {
case .sunny:
    print("It's a sunny day!")
case .rainy:
    print("It's a rainy day!")
case .cloudy:
    print("It's a cloudy day!")
}

// Ternary operator

let age = 20

let canVote = age >= 18 ? "Yes" : "No"

print("Can you vote? \(canVote)")

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)