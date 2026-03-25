// Complex data types

var beatles = ["John", "Paul", "George", "Ringo"]

var numbers = [1, 2, 3, 4, 5]

numbers.append(6) // This will cause an error because 'numbers' is a constant array

let fixedNumbers = [1, 2, 3, 4, 5]
// fixedNumbers.append(6) // This will also cause an error because 'fixedNumbers'

// Declare an array

var fruits = Array<String>()
fruits.append("Apple")
fruits.append("Banana")
fruits.append("Cherry")

var moreFruits: [String] = ["Mango", "Pineapple", "Grapes"]

var againFruits = ["Strawberry", "Blueberry", "Raspberry"]

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


// Dictionaries

var heights = ["Alice": 1.65, "Bob": 1.80, "Charlie": 1.75]

heights["Alice"] // This will return 1.65

heights["David"] = 1.70 // This will add a new key-value pair to the dictionary

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"


// Sets

var uniqueNumbers: Set<Int> = [1, 2, 3, 4, 5]
uniqueNumbers.insert(6) // This will add 6 to the set
uniqueNumbers.insert(3) // This will not add 3 again because sets only store unique

uniqueNumbers.contains(4) // This will return true


// Enums

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = .friday // This is a shorthand way to assign a new value to 'day

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
}

// Challenge 

let albums = ["Red", "1989", "Reputation", "Evermore", "Folklore", "Evermore", "Midnights", "Speak Now", "Fearless", "1989"]

let albumsSet = Set(albums)

print("Number of albums: \(albums.count)")
print("Number of unique albums: \(albumsSet.count)")