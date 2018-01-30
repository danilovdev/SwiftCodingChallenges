
import Foundation

/*
 Foundation has a specialized set type called NSOrderedSet.
 This also removes duplicates, but now ensures items stay in
 the order they were added. Sadly, it’s not bridged to
 Swift in any pleasing way, which means to use it you must add typecasting:
 once from Character to String before creating the set,
 then once from Array<Any> to Array<String>.
 */
func removeDuplicatesA(str: String) -> String {
    var arrayOfStrings = str.map { String($0) }
    let orderedSet = NSOrderedSet(array: arrayOfStrings)
    arrayOfStrings = Array(orderedSet) as! Array<String>
    return arrayOfStrings.joined()
}

assert(removeDuplicatesA(str: "wombat") == "wombat", "failed")
assert(removeDuplicatesA(str: "Mississippi") == "Misp", "failed")
assert(removeDuplicatesA(str: "hello") == "helo", "failed")

/*
 A second solution is to take a brute-force approach: create an array
 of used characters, then loop through every letter in the string
 and check if it’s already in the used array. If it isn’t, add
 it, then finally return a stringified form of the used array.
 */
func removeDuplicatesB(str: String) -> String {
    var characters = [Character]()
    for ch in str {
        if !characters.contains(ch) {
            characters.append(ch)
        }
    }
    return String(characters)
}

assert(removeDuplicatesB(str: "wombat") == "wombat", "failed")
assert(removeDuplicatesB(str: "Mississippi") == "Misp", "failed")
assert(removeDuplicatesB(str: "hello") == "helo", "failed")

/*
 You can change the value attached to a key just by assigning it again,
 but you can also call the updateValue() method – it does the same thing,
 but also returns either the original value or nil if there wasn’t one.
 So, if you call updateValue() and get back nil it means
 “that wasn’t already in the dictionary, but it is now.”
 We can use this method in combination with the filter() method on our input string’s
 character property: filter the characters so that only those that return nil for
 updateValue() are used in the return array.
*/

func removeDuplicatesC(str: String) -> String {
    var used = [Character: Bool]()
    let result = str.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    return String(result)
}

assert(removeDuplicatesC(str: "wombat") == "wombat", "failed")
assert(removeDuplicatesC(str: "Mississippi") == "Misp", "failed")
assert(removeDuplicatesC(str: "hello") == "helo", "failed")







