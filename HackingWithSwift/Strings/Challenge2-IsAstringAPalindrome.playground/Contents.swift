/*
 Write a function that accepts a String as its only parameter,
 and returns true if the string reads the same when reversed, ignoring case.
 */

import Foundation

func challenge2a(input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}

assert(challenge2a(input: "rotator") == true, "failed")
assert(challenge2a(input: "not palindrome") == false, "failed")
assert(challenge2a(input: "rot ator") == false, "failed")

func challenge2b(input: String) -> Bool {
    if input.isEmpty || input.count == 1 {
        return true
    }
    let unwantedChars = CharacterSet.alphanumerics.inverted.subtracting(CharacterSet.whitespacesAndNewlines)
    let input = input.components(separatedBy: unwantedChars).joined(separator: "").lowercased()
    let chars = Array(input)
    let n = chars.count
    var counter = 0
    while counter < n {
        if chars[counter] != chars[n - 1 - counter] {
            return false
        }
        counter += 1
    }
    return true
}

assert(challenge2b(input: "rotator") == true, "failed")
assert(challenge2b(input: "not palindrome") == false, "failed")
assert(challenge2b(input: "rot ator") == false, "failed")

func challenge2c(input: String) -> Bool {
    if input.isEmpty || input.count == 1 {
        return true
    }
    let unwantedChars = CharacterSet.alphanumerics.inverted.subtracting(CharacterSet.whitespacesAndNewlines)
    let input = input.components(separatedBy: unwantedChars).joined(separator: "").lowercased()
    let chars = Array(input)
    let n = chars.count
    var i = 0
    var j = n - 1
    while i < j {
        if chars[i] != chars[j] {
            return false
        }
        i += 1
        j -= 1
    }
    return true
}

assert(challenge2c(input: "rotator") == true, "failed")
assert(challenge2c(input: "not palindrome") == false, "failed")
assert(challenge2c(input: "rot ator") == false, "failed")

