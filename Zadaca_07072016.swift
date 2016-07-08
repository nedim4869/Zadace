//1.KONTROLA TOKA
//1.1 Petlje
//1.1.1 For-in petlja

//Mirkov primjer:
for number in 1...3{
  print("\(number) times 5 is \(number *5)")
}
//Moj primjer:
for i in 1...17{
  print("If you are \(i) year(s) old you are underage")
  }
/*Mirkov primjer ako nam ne treba vrijednost kolekcije ili intervala, odnosno
kada koristimo underscore:*/
for _ in 1..3{
  print("Hello World")
  }
//Moj primjer za to isto:
let name = "Nedim"
for _ in 1..3{
  print("My name is \(name), let me repeat myself")
  }
//Mirkov primjer za iteriranje kroz kolekcije:
let names = ["Alex", "Tracy", "Jack"]
for name in names {
  print("Hello, \(name)!")
}
//Moj primjer za iteriranje kroz kolekcije:
let pieces = ["Pawn", "Knight", "Bishop", "Rook", "Queen", "King"]
for piece in pieces {
  print("\(piece) is a Chess piece")
}

//Mirkov primjer sa dict-om.
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animal, legCount) in numberOfLegs {
       print("\(animal) have \(legCount) legs")
     }
//Moj primjer sa dict-om
let valueOfPiece = ["Pawn": 1, "Knight" : 3, "Bishop": 3 "Rook": 5 "Queen": 9]
for (piece, value) in valueOfPiece {
  print("\(piece) has a value of \(value)")
}

//1.1.2 While petlja

//Mirkov primjer:
var numbers = [3, 2, 5]
while numbers.isEmpty == false {
       print("\(numbers.removeAtIndex(0)) is out!")
}

//Moj primjer:
var firstTenPrimeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
while firstTenPrimeNumbers.isEmpty  == false {
  print("\(firstTenPrimeNumbers.removeAtIndex(0)) is a prime number")
}

//1.1.3. Repeat while petlja

//Mirkov primjer:
var count = 3
repeat {
  print(count)
  count -= 1
} while count > 0

//Moj primjer:

var goals = 7
repeat {
  print("They score! It's \(goals) to 0")
  goals -= 1
} while goals > 0

//1.2. Grananje
//1.2.1 If

//Mirkov primjer:

var temperature = 22
if temperature >= 18 {
  print("It would be good to wear shorts")
 }

 //Moj primjer:

var chanceOfRain = 60
if chanceOfRain > 50{
  print("There's an above 50% chance of rain today, it would be wise to bring an umbrella")
}

//Mirkov primjer (sa else-om):

var temperature = 15
if temperature >= 18 {
  print("It would be good to wear shorts")
} else {
  print("It would be good to wear pants")
}

//Moj primjer:

var chanceOfRain = 60
if chanceOfRain >= 50 {
  print("There's an above 50% chance of rain today, it would be wise to bring an umbrella")
} else {
  print("Chances are you're not going to need an umbrella today!")
}

//Mirkov primjer sa elif:

if temperature >= 18 {
  print("It would be good to wear shorts")
} else if temperature >= 0 && temperature < 18 {
  print("It would be good to wear pants")
} else {
  print("It's best to stay home")
}

//Moj primjer sa elif:

if chanceOfRain >= 60 {
  print("It would be wise to bring an umbrella today")
} else if chanceOfRain >= 0 && chanceOfRain < 50 {
  print("You'll be probably fine without an umbrella today")
} else {
  print("Could go either way,  bring an umbrella, just to be sure ;) ")
}
//1.2.2 Switch
//Mirkov primjer:

let character: Character = "e"
switch character {
  case "a", "e", "i", "o", "u":
    print("\(character) is a vowel")
  case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",  "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(character) is a consonant")
  default:
    print("\(character) is not a vowel or a consonant") }

//Moj primjer:

let bookcharacter: BookCharacter = "Sherlock"
switch bookcharacter {
  case "Sherlock", "Watson":
    print("\(bookcharacter) is a major character")
  case "Moriarty", "Mycroft", "Irene", "Mary", "Mrs. Hudson":
    print("\(character) is an important character")
  default:
    print("\(character) is a minor character")
}

let hp = 100
switch hp {
  case 1..<100:
    print("You still have health points. You are alive.")
  case 101...>100:
    print("You're doing really well.")
  default:
    print("You are dead.") }

//2. Kontrola transfera
//2.1. Continue

//Mirkov primjer:

let string = "Hello World"
var stringWithoutVowels = ""
for character in string.characters {
  switch character {
    case "a", "e", "i", "o", "u":
        continue
    default:
        stringWithoutVowels.append(character)
    }
}
print(stringWithoutVowels)

//Moj primjer:

let number = "1557234492749068233"
var numberWithoutEvenDigits = ""
for number in string.numbers {
  switch number {
    case "1", "3", "5", "7", "9":
      continue
    default:
      numberWithoutEvenDigits.append(number)
}
print(numberWithoutEvenDigits)

//2.2. Break

//Mirkov primjer:

let array = [1, 4, 15, -2, 9]
for number in array {
  if number > 0 {
    print(number)
  } else {
      break
  }
}

//Moj primjer:

let firstTenNaturalNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for number in firstTenNaturalNumbers {
  if number < 6{
    print(number)
} else {
    break
  }
}

//2.3 Fallthrough

//Mirkov primjer:

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
  case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
  default:
    description += " an integer."
  }
print(description)

//Moj primjer

let bookCharacter = "Harry Potter"
var description = "The character \(bookCharacter) is"
switch bookcharacter {
  case "Sherlock", "Watson":
    description += " a major character in Sherlock Holmes")
  case "Moriarty", "Mycroft", "Irene", "Mary", "Mrs. Hudson":
    description += " an important character in Sherlock Holmes")
  default:
    description += " a minor character in Sherock Holmes or a character from another book")
}
print(description)

//2.4 Guard

//Mirkov primjer:

let ages = [27, 31, 15, 17]
for age in ages {
  guard age > 18 else {
    print("We have a minor")
    break
  }
  print("He is an adult")
}

//Moj primjer:

let measuredHeights = [185, 190, 193, 201, 142, 160]
for measuredHeight in measuredHeights {
  guard measuredHeight > 175 else {
    print("We have a short one")
    break
  }
  print("He is tall")
}


//3. Funkcije
//3.1 Definisanje funkcija

//Mirkov primjer 1.:

func printHelloWorld() {
  print("Hello world")
}

//Mirkov primjer 2.:

func add(a: Int, b: Int) -> Int {
  return a + b
}

//Moj primjer:

func sastaviIme(ime: String, prezime: String) -> String {
  return ime + " " + prezime
}

//3.2. Pozivanje funkcija

//Mirkov primjer 1:

printHelloWorld()

//Mirkovprimjer 2:

var number = add(3, b: 7)

//Moj primjer:

var punoImeIPrezime = sastaviIme("Nedim", prezime: "Karakas")

//3.3 Argumentiranje i povratne vrijednosti
//3.3.1 Funkcije bez arugmenata
func sayHalloWorld() -> String {
  return "Hello world"
}
print(sayHalloWorld())

//Moj primjer:
func imeAutora() -> String{
  return "Nedim Karakaš"
}
print(imeAutora())

//3.3.2 Funkcije sa arugmentima

//Mirkov primjer:

func say(greeting: String, to: String) {
  print("\(greeting), \(to)!")
}
say("Hi", to: "Rick")
say("Hi" to: "John")

//Moj primjer:

func ping(site: String, for: String){
  print("Pinging \(site), for \(timeout) miliseconds")
}

//3.3.3. Funkcije koje ne vracaju vrijednost

//Mirkov primjer:

func printTheArgument(argument: String) {
  print(argument)
}

//Moj primjer
func saysomething(something: String){
  print(something)
}

//3.3.4. Funkcije koje vraćaju mješovite vrijednosti

//Mirkov primjer:
func minMax(array:[Int]) -> (min: Int, max: Int) {
  var newMin = array[0]
  var newMax = array[0]
  for value in array[1..<array.count] {
    if value < newMin {
      newMin = value
    } else if value > newMax {
      newMax = value
    }
  }
    return (newMin, newMax)
}
let bounds = minMax([8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
// Ispisuje: min is -6 and max is 109
let failingBounds = minMax([Int]()) // GRESKA

//Moj primjer:

//uz korištenje NSdate (datetime za swift)

func getTime() -> (hour:Int, min:Int) {
        let currentDateTime = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Hour,.Minute,.Second], fromDate: currentDateTime)
        let hour = components.hour
        let min = components.minute
        return (hour,min)
    }

print(getTime()) // vraca tuple (sat, minuta)



//3.3.5. Funkcija koja vraća opcional

func optionalMinMax(array:[Int]) -> (min: Int, max: Int)? {
  if array.isEmpty {
    return nil
  }
  var newMin = array[0]
  var newMax = array[0]
  for value in array[1..<array.count] {
    if value < newMin {
      newMin = value
    } else if value > newMax {
      newMax = value
    }
  }
  return (newMin, newMax)
}
if let newBounds = optionalMinMax([8, -6, 2, 109, 3, 71]) {
  print("min is \(newBounds.min) and max is \(newBounds.max)")
}
// Ispisuje: min is -6 and max is 109
if let optionalBounds = optionalMinMax([Int]()) {
  print(optionalBounds)
}

//Moj primjer:

var clockOn: Bool = false

func getTime() -> (hour:Int, min:Int)? {
    if clockOn == false{
        return nil
    }
        let currentDateTime = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Hour,.Minute,.Second], fromDate: currentDateTime)
        let hour = components.hour
        let min = components.minute
        return (hour,min)
    }

print(getTime()) //vraca opcional jer uslov clockOn = true nije zadovoljen 

//3.3.6 Imena arugmenata funkcije

//Mirkov primjer:
func someFunction(firstArg: String, secondArg: Int) {
  // some code
} someFunction("Hello", secondArg: 3)

//Moj primjer:
func introduce(friend: String, to: String){
  print("\(friend), let me introduce you to \(to)")
}
introduce("Nedim", to: Mirza)

//3.3.6.1 Specifikovanje eksternog Imena
//Mirkov primjer:

func sayHello(to person: String, and anotherPerson: String) -> String {
  return "Hello \(person) and \(anotherPerson)!"
}
print(sayHello(to: "Bill", and: "Ted"))

//3.3.6.2. Standardne vrijednosti argumenta:

func someFunction(parameterWithDefault: Int = 12) {
  print(parameterWithDefault)
}

func jaSam(paramwithdef: String = "Nedim"){
  print(paramwithdef)
}

//jaSam() ispisuje Nedim, jaSam("Mirko") ispisuje Mirko

//3.3.6.3. Variadični arugmenti funkcije

//Mirkov primjer:

func arithmeticMean(numbers: Double...) -> Double {
  var total: Double = 0
  for number in numbers {
    total += number
  }
  return total / Double(numbers.count)
}

//Moj primjer:

func geometricMean(numbers: Int...) -> Int{
  var total: Int = 0
  var count: Int = 0
  for number in numbers{
    total = total * number
    count += 1
  }
  return pow(total, 1/count) /*nisam siguran da pow ovo može,
  uglavnom produkt brojeva na recipročnu vrijednost broja članova produkta, tj.
  n-ti korijen proizvoda n brojeva */
}

//3.3.6.4 In-out argumenti

//Mirkov primjer:

func swapTwoInts(inout a: Int, inout _ b: Int) {
  let temporaryA = a
  a = b
  b = temporaryA }
  var someInt = 3
  var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)

//Moj primjer:

func prezimePaIme(inout prvi: Int, inout _ drugi: Int){
  let tempvar = prvi
  prvi = drugi
  drugi = temvar
}

var nekoIme = Nedim
var nekoPrezime = Karakas
prezimePaIme(&nekoIme, &nekoPrezime)

//3.3.7. Funkcija kao tip

//Mirkov primjer:

func addTwoInts(a: Int, _ b: Int) -> Int {
  return a + b
}
  var mathFunction: (Int, Int) -> Int = addTwoInts

//Moj primjer:

func factorial(number: Int) -> (Int) {
    if (number <= 1) {
        return 1
    }

    return number * factorial(number - 1)
}

var faktorijelBroja: (Int) -> Int = factorial

//3.3.8.Ugniježdene funkcije:
//Mirkov primjer:

func printThreeTimesHelloWorld() {
  func printNestedHelloWorld() {
    print("Hello world")
  }
  for _ in 1...3 {
    printNestedHelloWorld()
  }
}

//Moj primjer:

func spam(){
  func nestedSpam(){
    print("I am a Nigerian prince and will reward you handsomely if you help me!")
    print("I just need your bank account info...")
    print("I will send you 10 million immediately!")
    print("If you help you will get 10 %!")
  }
  for _ in 1...100{
    nestedSpam()
  }
}


//3.4 Closure

//Mirkov primjer:

let greet = { (name: String) -> Void in
  print("Hello \(name)")
}
greet("Jill")

//Moj primjer:

let enterEmail = { (email: String) -> Void in
  print("Are you sure your e-mail is \(email) ? Press any key to continue")
}

//3.4.1 Closure kao zadnji argument funkcije:

//Mirkov primjer 1:

func someFuncationThatTakesAClosure(closure: () -> Void) {
  // function's body code
}
  // Adding closure code
  someFuncationThatTakesAClosure({
    // closure's body code
  })

//Mirkov primjer 2:

// If closure is last argument in the function
someFuncationThatTakesAClosure() {
  // closure's body code
}

//Mirkov primjer 3:

// If closure is only argument in the function
someFuncationThatTakesAClosure {
  // closure's body code
}

//Moj primjer:

let numbers = [2, 4, 6, 8]
let closureTripledNumbers = nums.map({ (num:Int) -> Int in return(num * 3) })
closureDoubledNums //6, 12, 18, 24

//4. Enumeracije

//Mirkov primjer 1:

enum CompassPoint {
  case North
  case South
  case East
  case West
}

//Mirkov primjer 2:

enum Planet {
  case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}
  var directionToHead = CompassPoint.North

  directionToHead = .East //ako promjenljiva zna tip enuma ne mora se pisati naziv

func whereToHead(direction: CompassPoint) {
  switch direction {
    case .North:
    print("Wear jacket")
    case .South:
    print("Wear shorts")
    default:
    print("Take care")
  }
} whereToHead(.North)

//Moj primjer:

enum theGEight{
  case Germany, USA, France, Canada, Italy, Japan, Russia, UK
}

func whatToDoWhenIn(where: theGEight){
  case .Germany:
  print("Get bratwurst, get beer, you're all set.")
  case .USA:
  print("Don't feed the Trump, have fun.")
  case .France:
  print("Taste some wine, enjoy culture!")
  case .Canada:
  print("Enjoy some pancakes with maple syrup and don't forget to be overly polite")
  case .Italy:
  print("Eat everything, it's delizioso! Marvel at the incredible art and arcitechture!")
  case .Japan:
  print("Eat some sushi, learn about the rich history and if visiting in Spring enjoy the cherry blosom festivals")
  case .Russia:
  print("One word - vodka.")
  case . UK:
  print("Brexit.")
}

//4.2 Raw values - sirove vrijednosti

//Mirkov primjer 1:

enum ASCIIControlCharacter: Character {
  case Tab = "\t"
  case LineFeed = "\n"
  case CarriageReturn = "\r"
}
  let controlCharacter = ASCIIControlCharacter.LineFeed controlCharacter.rawValue // \n

//Mirkov primjer 2:

enum Planet2: Int {
  case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

Planet2.Earth.rawValue  // 2
Planet2.Saturn.rawValue // 5

//Mirkov primjer 3:
let planet = Planet2(rawValue: 3) // planet = Mars

//Moj primjer:

enum theGEight2{
  case Germany, USA, France, Canada, Italy, Japan, Russia, UK
}

theGEight2.Germany.rawValue // 1

let member = theGEight2(rawValue: 5)
// member = Italy
