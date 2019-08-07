/*
 Write a function that accepts a String as its only parameter,
 and returns true if the string reads the same when reversed, ignoring case.
 */

func isStringPalindrome(str: String) -> Bool {
    let lowerCased = str.lowercased()
    return String(lowerCased.reversed()) == str
}

assert(isStringPalindrome(str: "rotator") == true, "failed")
assert(isStringPalindrome(str: "not palindrome") == false, "failed")
assert(isStringPalindrome(str: "rot ator") == false, "failed")
