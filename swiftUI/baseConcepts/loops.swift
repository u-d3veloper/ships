let plateforms = ["iOS", "macOS", "tvOS", "watchOS"]

for platform in plateforms {
    print("SwiftUI works on \(platform)")
}

for i in 1...5 {
    print("Iteration \(i)")
}

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

// While loop

var countdown = 10

while countdown > 0 {
    print("Countdown: \(countdown)")
    countdown -= 1
}

let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("You rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!    
print("Critical hit!")