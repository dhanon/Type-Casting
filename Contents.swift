import UIKit

//upcasting the instance of the subclass as the instance of the superclass.
// Base class
class Shape {
   func display(){
      print("Ball is in the shape of sphere")
   }
}

// Sub class
class Rectangle: Shape {
   func show(){
      print("Rectangle is the most commonly used shape")
   }
}

// Creating an instance of the Rectangle class
let rect = Rectangle()

// Upcasting the instance of the rectangle class as the instance of the Shape class
let obj : Shape = rect

// Accessing the method of superclass
obj.display()

// Now we are not able to directly access the method or properties of the sub-class
// If we do we will get an error
// obj.show()


//the use of conditional downcasting operator(as?).
// Base Class
class ProgrammingLanguage {
   func show() {
      print("Welcome to the great world of learning")
   }
}

// Subclass
class Swift: ProgrammingLanguage {
   func display() {
      print("Welcome to Swift tutorial")
   }
}
let obj2: ProgrammingLanguage = Swift()

// Here the conditional downcasting will be successful
if let result1 = obj2 as? Swift {
   print("Downcast is successful!")
    
   // Accessing subclass method
   result1.display()
} else {
   print("Downcast is unsuccessful")
}

// Here the conditional downcasting will be unsuccessful
let newObj: ProgrammingLanguage = ProgrammingLanguage()

if let result2 = newObj as? Swift {
   print("\nDowncast is successful!")
   result2.display()
} else {
   print("Downcast is unsuccessful")
}
