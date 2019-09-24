import Foundation

func challenge16a() {
    for i in 1...100 {
        let a = i % 3 == 0
        let b = i % 5 == 0
        switch (a, b) {
        case (true, true):
            print("Fizz Buzz")
        case (true, false):
            print("Fizz")
        case (false, true):
            print("Buzz")
        default:
            print(i)
        }
    }
}

func challenge16b() {
    for i in 1...100 {
        if i % 3 == 0 && i % 5 == 0 {
            print("Fizz Buzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

func challenge16c() {
    for i in 1...100 {
        if i % 3 == 0 {
            if i % 5 == 0 {
                print("Fizz Buzz")
            } else {
                print("Fizz")
            }
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

func challenge16d() {
    (1...100).forEach {
        print($0 % 3 == 0 ? $0 % 5 == 0 ? "Fizz Buzz" : "Fizz" : $0 % 5 == 0 ? "Buzz" : "\($0)")
    }
}

// with closure
let fizzBuzz: (Int) -> String = { i in
    let a = i % 3 == 0
    let b = i % 5 == 0
    switch (a, b) {
    case (true, true):
        return "Fizz Buzz"
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    default:
        return "\(i)"
    }
}

print(Array(1...100).map(fizzBuzz).joined(separator: "\n"))
