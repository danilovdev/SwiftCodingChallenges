/*
Consider two input arrays,
let listOne = [3,nil,5,7]
let listTwo = [4,6,2,8,nil]
By using higher order functions,  write code snippet to get a sum of all integers from both arrays.
*/

let listOne = [3, nil, 5, 7]
let listTwo = [4, 6, 2, 8, nil]

// Solution 1. Multiple steps
let compactListOne = listOne.compactMap { $0 }
let compactListTwo = listTwo.compactMap { $0 }
let arrayOfArrays = [compactListOne, compactListTwo]
let array = arrayOfArrays.flatMap { $0 }
let sum = array.reduce(0, { result ,part in
    return result + part
})
print(sum) // 35

// Solution 2. One function
let result = [listOne.compactMap { $0 },
              listTwo.compactMap { $0 }]
    .flatMap { $0 }
    .reduce(0, +)
print(result)

// Explanation
/*
 
 Higher order functions are simply functions that can either accept functions or closures as arguments or return a function/closure.
 
 Higher Order Functions are very useful and powerful and help us to write more elegantly and maintainable code. Those functions are Map, Filter, Reduce, Sort, CompactMap etc.
 
 let result = [listOne.compactMap({ $0}),listTwo.compactMap({ $0})].flatMap({ $0}).reduce(0) { $0 + $1 }
 First compact map removes nil element from the array. Then by using a flat map, we combine these two arrays.
 
 And finally, reduce function will help to get the sum of array elements.
 
 */


