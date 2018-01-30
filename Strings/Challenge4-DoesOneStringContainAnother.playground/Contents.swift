/*
 Write your own version of the contains() method on String that ignores letter case, and
 without using the existing contains() method.
 */


import Foundation // For using range method of string we need to import Foundation

/*
 For this challange we will use range method of string.
 range(of: String) finds and returns the range of the first occurrence of a
 given string within a given range of the String, subject to given options,
 using the specified locale, if any. (Apple Docs)
 */
extension String {
    
    func myContainsA(_ string: String) -> Bool {
        return self.uppercased().range(of: string.uppercased()) != nil
    }
    
    func myContainsB(_ string: String) -> Bool {
        return self.range(of: string, options: .caseInsensitive) != nil
    }
}

assert("Hello, world".myContainsA("Hello") == true, "failed")
assert("Hello, world".myContainsA("WORLD") == true, "failed")
assert("Hello, world".myContainsA("Goodbye") == false, "failed")

assert("Hello, world".myContainsB("Hello") == true, "failed")
assert("Hello, world".myContainsB("WORLD") == true, "failed")
assert("Hello, world".myContainsB("Goodbye") == false, "failed")



