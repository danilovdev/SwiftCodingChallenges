/*
 Task 8.
 Write a function that accepts two strings, and returns true if one
 string is rotation of the other, taking letter case into account.
 
 A string rotation is when you take a string, remove some letters from its end,
 then append them to the front.
 For example, “swift” rotated by two characters would be “ftswi”.
 */

/*
 If you write a string twice it must always encapsulate all possible rotations.
 So if your string was “abc” then you would double it to “abcabc”,
 which contains all possible rotations: “abc”, “cab”, and “bca”.
 Also, we need to check not only that the test string exists in the doubled input,
 but also that both strings are the same size.
 */

func isStringRotated(str: String, rotated: String) -> Bool {
    guard str.count == rotated.count else {
        return false
    }
    let combined = str + str
    let result = combined.contains(rotated)
    return result
}
