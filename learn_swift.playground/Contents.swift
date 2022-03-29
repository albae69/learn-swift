import UIKit

print("hello world!")
//print

// use let to make a constant, and var to make a variable
let myConstant = 69
var myVariable = 40
myVariable = 46

// a constants or a variable must have a same type as the value you want to assign it.
// the compiler automatically infer its type of constant or variable when created.
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

// experiment: create a constant with an explicit type of a Float and a value of 4
let explicitFloat: Float = 4

//values are never implicitly converted to another type. If you need to convert a different type, explicitly make an instance of the desired type.
let label = "The width is"
let width = 95
let widthLabel = label + String(width)

// experiment: try removing the conversion to String from the last line. What error do you get?
//let denganLabel = label + width // Binary operator '+' cannot be applied to operands of type 'String' and 'Int'

// to include values in a strings: Write the value in parentheses, and write a backslash (\) before the parentheses.
let apples = 5
let oranges = 10
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruits"

// experiment: to include a floation in a string and included someones name in a greeting.
let a:Float = 1
let b:Float = 2
let c  = "a + b = \(a + b)"
let nama = "bae"
let salam = "hello, \(nama)"

// use three double quotation (""") for strings that take up multiple lines
let quotation = """
I said have "I have \(apples)." And then said "I have \(apples + oranges) pieces of fruits"
"""

// array
// create arrays and dictionaries using bracket ([]), and access their elements by writing the index or key in brackets. A comma is allowed after the last element

var shoppingList = ["catfish","water","tulips"]
shoppingList[1] = "bottle of water"
print(shoppingList)


var occupations = [
    "Malcolm":"Captain",
    "Kayle":"IT"
]

occupations["Jayne"] = "Public Relations"
print(occupations)
// arrays automatically grow as you add elements

shoppingList.append("blue paint")
print(shoppingList)

// to create an empty array or dictionary, use the initializer syntax
let emptyArray:[String] = []
let emptyDictionary: [String:Float] = [:]

// if type can be inferred, you can write empty array as [] and an empty dictionary as [:] - for example, when you set a new value for a variable or pass an argument to a function
shoppingList = []
occupations = [:]

// control flow
// use if and switch to make conditionals, and use for-in,while,and repeat-while to make loops. Parentheses around the condition or loop variable are optional. Braces around the body are required.

let individualScore = [75,43,103,87,12]
var teamScore = 0
for score in individualScore {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
// in an if statement, the conditional must be a Boolean expression- this means that code such as if score {...} is an error, not an implicit comparison to zero.

// you can use if and let together to work with values that might be missing. These values are represented as optionals. An optionals value either contains a value or nil to indicate that a value is missing. Write a question mark(?) after the type of a value to mark the value as optional.

var optionalName: String? = "Ahmad Albaihaqi"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

// experiment: Change optionalName to nil. What greeting do you get? add an else clause that sets a different greeting if optionalName is nil
// var optionalName: String? = nil // its okay

// another way to handle optional values is to provide a default value using the ?? operator. if the optional value is missing, the default value is used instead
let nickname: String? = nil
let fullName: String? = "Ahmad Albaihaqi"
let informalGreeting = "hi \(nickname ?? fullName)"
print(informalGreeting)

// switches support any kind of data and wide variety of comparison operations-they are'nt limited to integers and test for equality
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber","watercress":
    print("That would make a good sandwich.")
case let x where x.hasSuffix("pepper") :
    print("it is a spicy? \(x)?")
default:
    print("Everthing tastes good in soup")
}
// experiment: try removing the default case. What error do you get? = Switch must be exhaustive


// notice how let can be used in a pattern design to assign a value to matched a pattern to a constant.
let interesetingNumbers = {
    
}
