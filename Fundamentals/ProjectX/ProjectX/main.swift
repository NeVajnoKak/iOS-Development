
//func onesMinusZeros(_ grid: [[Int]]) -> [[Int]] {
//        
//    }


var grid = [[1,1,1],[1,1,1]]
var diff = Array(repeating: Array(repeating: 0, count: grid[0].count), count: grid.count)



for (index,row) in grid.enumerated() {
    for j in 0..<grid.count {
        diff[index][j] = row.reduce(0,+) + grid[index][j].reduce(0, +) - (grid.count  - row.reduce(0,+)) - (grid.count - grid[index][j].reduce(0, +))
    }
    print(row)
    
}

print(diff)

//print(grid.map{$0[0]})
//print(grid[1])








































//func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
//    var lessNums = [Int] ()
//    var pivotNums = [Int] ()
//    var greaterNums = [Int] ()
//
//    for number in nums {
//        if pivot > number {
//            lessNums.append(number)
//        }
//        else if pivot == number {
//            pivotNums.append(number)
//        }
//        else {
//            greaterNums.append(number)
//        }
//    }
//
//    return lessNums + pivotNums + greaterNums
//}
//
//
//
//var nums = [-3,4,3,2], pivot = 2
//print(pivotArray(nums, pivot))
//var lessNums = [Int] ()
//var pivotNums = [Int] ()
//var greaterNums = [Int] ()
//
//for number in nums {
//    if pivot > number {
//        lessNums.append(number)
//    }
//    else if pivot == number {
//        pivotNums.append(number)
//    }
//    else {
//        greaterNums.append(number)
//    }
//}
//print(lessNums + pivotNums + greaterNums)

































//func validStrings(_ n: Int) -> [String] {
//    var binaryString = [String]()
//    var maxText = ""
//    var minText = ""
//    for i in 0..<n {
//        maxText += "1"
//        if i == 0 {
//            minText += "0"
//        }
//        else if i == 1 {
//            minText += "1"
//        }
//        else if i % 2 == 1 {
//            minText += "1"
//        }
//        else {
//            minText += "0"
//        }
//    }
//
//    var arr = Array(Int(minText , radix: 2)!...Int(maxText , radix: 2)!)
//
//    func pad(string : String, toSize: Int) -> String {
//      var padded = string
//      for _ in 0..<(toSize - string.count) {
//        padded = "0" + padded
//      }
//      return padded
//    }
//
//    for number in arr {
//        if !pad(string: String(number,radix: 2), toSize: n).contains("00") {
//            binaryString.append(pad(string: String(number,radix: 2), toSize: n))
//        }
//    }
//    return binaryString
//}





//var n = 4
//print(validStrings(n))
//var binaryString = [String]()
//var maxText = ""
//var minText = ""
//for i in 0..<n {
//    maxText += "1"
//    if i == 0 {
//        minText += "0"
//    }
//    else if i == 1 {
//        minText += "1"
//    }
//    else if i % 2 == 1 {
//        minText += "1"
//    }
//    else {
//        minText += "0"
//    }
//}
//
//var arr = Array(Int(minText , radix: 2)!...Int(maxText , radix: 2)!)
//
//func pad(string : String, toSize: Int) -> String {
//  var padded = string
//  for _ in 0..<(toSize - string.count) {
//    padded = "0" + padded
//  }
//  return padded
//}
//
//for number in arr {
//    if !pad(string: String(number,radix: 2), toSize: n).contains("00") {
//        binaryString.append(pad(string: String(number,radix: 2), toSize: n))
//    }
//}
//print(binaryString)





























// 0001

//func sortTheStudents(_ score: [[Int]], _ k: Int) -> [[Int]] {
//    var maxArr = [Int:Int]()
//    for i in 0..<score.count {
//        for j in 0..<score[i].count {
//            if j == k {
//                maxArr[i] = score[i][j]
//                break
//            }
//        }
//    }
//    var sortMax = maxArr.sorted(by: {$0.1 > $1.1})
//    var newScore = [[Int]]()
//    for i in 0..<score.count {
//        newScore.append(score[sortMax[i].key])
//    }
//    return newScore
//    }
//
//var score = [[10,6,9,1],[7,5,11,2],[4,8,3,15]], k = 2
//print(sortTheStudents(score, k))
//var maxArr = [Int:Int]()
//for i in 0..<score.count {
//    for j in 0..<score[i].count {
//        if j == k {
//            maxArr[i] = score[i][j]
//            break
//        }
//    }
//}
//var sortMax = maxArr.sorted(by: {$0.1 > $1.1})
//var newScore = [[Int]]()
//for i in 0..<score.count {
//    newScore.append(score[sortMax[i].key])
//}
//print(newScore)

//for i in 0..<score.count {
//    
//    for j in 0..<score[i].count {
//        if j == k {
//            
//            break
//        }
//    }
//
//}
//print(score)


























//func numberOfBeams(_ bank: [String]) -> Int {
//    var arrOnes = [Int]()
//    var sum = 0
//    for strNumber in bank {
//        for character in strNumber {
//            if character == "1" {
//                sum += 1
//            }
//        }
//        if sum != 0 {
//            arrOnes.append(sum)
//        }
//        
//        sum = 0
//    }
//    var arrSum = [Int]()
//    for index in 0..<arrOnes.count {
//        if arrOnes[index] != 0 {
//            if index == arrOnes.count - 1 {
//                break
//            }
//            else {
//                arrSum.append(arrOnes[index] * arrOnes[index + 1])
//            }
//        }
//    }
//    
//    return arrSum.reduce(0,+)
//    }





//var bank = ["000","111","000"]
//print(numberOfBeams(bank))
//var arrOnes = [Int]()
//var sum = 0
//for strNumber in bank {
//    for character in strNumber {
//        if character == "1" {
//            sum += 1
//        }
//    }
//    if sum != 0 {
//        arrOnes.append(sum)
//    }
//    
//    sum = 0
//}
//var arrSum = [Int]()
//for index in 0..<arrOnes.count {
//    if arrOnes[index] != 0 {
//        if index == arrOnes.count - 1 {
//            break
//        }
//        else {
//            arrSum.append(arrOnes[index] * arrOnes[index + 1])
//        }
//    }
//}
//print(arrOnes)
//print(arrSum.reduce(0,+))

































//func maxScoreWords(_ words: [String], _ letters: [Character], _ score: [Int]) -> Int {
////    var needScore = Set(letters).sorted()
//    
//    var alphabit = Dictionary(uniqueKeysWithValues: "abcdefghijklmnopqrstuvwxyz".map { ($0, 0) })
//    
//    var letterAlphabit = Array("abcdefghijklmnopqrstuvwxyz")
//
//    for index in 0..<score.count {
//        alphabit[letterAlphabit[index]] = score[index]
//    }
//
//
//    // Letter Dictionary
//
//    var letterCountDictionary = [String:Int]()
//    var sumOfLetters = 0
//
//    for index in 0..<alphabit.count {
//        letterCountDictionary[String(letterAlphabit[index])] = 0
//    }
//
//    for character in letters {
//        letterCountDictionary[String(character)]! += 1
//    }
//    
//
//    // REMOVE NOT VALIABLE WORDS
//
//    var remove = [Int] ()
//    for (index,word) in words.enumerated() {
//        for character in word {
//            if !letters.contains(String(character)) {
//                remove.append(index)
//                break
//            }
//        }
//    }
//    var newWords = [String] ()
//    if !remove.isEmpty {
//        if remove.count == 1 {
//            for (index,word) in words.enumerated() {
//                if index == remove[0]{
//                    
//                }
//                else {
//                    newWords.append(word)
//                }
//            }
//        }
//        else {
//            var count = 0
//            
//            for (index,word) in words.enumerated() {
//                if index == remove[count]{
//                    count += 1
//                }
//                else {
//                    newWords.append(word)
//                }
//            }
//        }
//    }
//    else {
//        newWords = words
//    }
//   
//
//
//    // COMBINATION
//    var sumOfWords = [Int]()
//    var sumIndex = 0
//    var sum = 0
//    var wordSum = 0
//    var enought = 0
//    var checkLetterCountDictionary = letterCountDictionary
//    
//    sumOfWords.append(0)
//    for specIndex in 0..<newWords.count {
//        
//        for character in newWords[specIndex] {
//            checkLetterCountDictionary[String(character)]! -= 1
//            if checkLetterCountDictionary[String(character)]! < 0 {
//                enought += 1
//                sum = 0
//                break
//            }
//            sum += alphabit[character]!
//        }
//        
//        if enought == 0 {
//            sumOfWords[specIndex] = sum
//        }
//        else {
//            enought = 0
//        }
//        
//        if newWords.count - 1 != specIndex {
//            sum = 0
//            
//            
//            for index in specIndex..<newWords.count {
//                for j in index..<newWords.count {
//                    if j != specIndex {
//                        for character in newWords[j] {
//                            checkLetterCountDictionary[String(character)]! -= 1
//                            if checkLetterCountDictionary[String(character)]! < 0 {
//                                enought += 1
//                                sum = 0
//                                break
//                            }
//                            sum += alphabit[character]!
//                        }
//                       
//                        wordSum = sum
//                        if enought > 0 {
//                            
//                            break
//                        }
//                    }
//                    
//                }
//                
////                print(wordSum)
////                print(sumOfWords)
////                print(sumIndex)
//                print(wordSum)
//                print(sumOfWords[index])
//                sumOfWords[index] += wordSum
//                sumOfWords.append(0)
//                sumIndex += 1
//                enought = 0
//                
//                wordSum = 0
//                sum = 0
//                checkLetterCountDictionary  = letterCountDictionary
//            }
//        }
//    }
//    print(sumOfWords)
//    return sumOfWords.max() ?? 0
//}
//// a - 4 , b - 1 , c - 3 , d - 3
//
//// da - 6   a - 1 d - 1
//// ac - 12  a - 1 c - 1
//// aba - 13  a - 2 b - 1
//// abcc - 28  a - 1 b - 1 c - 2
//// cadc - 24  c - 2 a - 1 d - 1
//
//var words = ["da","ac","aba","abcc","cadc"], letters:[Character] = ["a","a","a","a","b","c","c","c","d","d","d"], score = [3,7,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
//
////var arr = [1,2,3,4,5,6,7,8,9]
////var maxCombo = [Int]()
////for i in 0..<arr.count {
////    for j in 0..<arr.count {
////        
////    }
////}
//
//print(maxScoreWords(words, letters, score))
//// SCORE - решено
//var needScore = Set(letters).sorted()
//score = score.filter({$0 != 0})
//
//var scoreDictionary = [String : Int]()
//
//for index in 0..<score.count {
//    scoreDictionary[needScore[index]] = score[index]
//}


// Letter Dictionary

//var letterCountDictionary = [String:Int]()
//var sumOfLetters = 0
//
//for index in 0..<needScore.count {
//    letterCountDictionary[needScore[index]] = 0
//}
//
//for character in letters {
//    letterCountDictionary[character]! += 1
//}
//
//
//
//// REMOVE NOT VALIABLE WORDS
//
//var remove = [Int] ()
//for (index,word) in words.enumerated() {
//    for character in word {
//        if !letters.contains(String(character)) {
//            remove.append(index)
//            break
//        }
//    }
//}

//var newWords = [String] ()
//if remove.count == 1 {
//    for (index,word) in words.enumerated() {
//        if index == remove[0]{
//            
//        }
//        else {
//            newWords.append(word)
//        }
//    }
//}
//else {
//    var count = 0
//    
//    for (index,word) in words.enumerated() {
//        if index == remove[count]{
//            count += 1
//        }
//        else {
//            newWords.append(word)
//        }
//    }
//}


//// COMBINATION
//var sumOfWords = [Int]()
//var sum = 0
//var enought = 0
//var checkLetterCountDictionary = letterCountDictionary
//for index in 0..<newWords.count {
//    for j in index..<newWords.count {
//        for character in newWords[j] {
//            checkLetterCountDictionary[String(character)]! -= 1
//            if checkLetterCountDictionary[String(character)]! < 0 {
//                enought += 1
//                break
//            }
//            sum += scoreDictionary[String(character)]!
//        }
//        if enought > 0 {
//            sumOfWords.append(sum)
//            break
//        }
//        
//    }
//    if enought == 0 {
//        sumOfWords.append(sum)
//    }
//    else {
//        enought = 0
//    }
//    
//    sum = 0
//    checkLetterCountDictionary  = letterCountDictionary
//}
//print(sumOfWords.max()!)
































//func subtractProductAndSum(_ n: Int) -> Int {
//    var text = String(n)
//
//    var multiply = 1
//    var sum = 0
//
//    for character in text {
//        multiply *= Int(String(character))!
//        sum += Int(String(character))!
//    }
//
//    return multiply - sum
//    }
//
//
//var n = 234
//print(subtractProductAndSum(n))
//var text = String(n)
//
//var multiply = 1
//var sum = 0
//
//for character in text {
//    multiply *= Int(String(character))!
//    sum += Int(String(character))!
//}
//
//print(multiply - sum)


































//func smallestEvenMultiple(_ n: Int) -> Int {
//    if n % 2 == 0 {
//        return n
//    }
//    return n * 2
//}
//
//var n = 5
//print(smallestEvenMultiple(n))
//if n == 0 {
//    print(0)
//}
//if n % 2 == 0 {
//    print(n)
//}
//else {
//    print(n * 2)
//}






































//func differenceOfSums(_ n: Int, _ m: Int) -> Int {
//    var arr = Array(1...n)
//
//    var num1 = arr.filter({$0 % m != 0})
//    var num2 = arr.filter({$0 % m == 0})
//    
//    return num1.reduce(0, +) - num2.reduce(0, +)
//}
//
//
//
//
//var n = 10, m = 3
//
//print(differenceOfSums(n, m))
//var arr = Array(1...n)
//
//var num1 = arr.filter({$0 % m != 0})
//var num2 = arr.filter({$0 % m == 0})
//print(num1)
//print(num2)
//print(num1.reduce(0, +) - num2.reduce(0, +))





























//func truncateSentence(_ s: String, _ k: Int) -> String {
//    var s = s
//    if s.split(separator: " ").count <= k {
//        return s
//    }
//    
//    var words = s.split(separator: " ")
//    var count = 0
//    s.removeAll()
//    for character in words {
//        if count == k {
//            s.removeLast()
//            break
//        }
//        s += character + " "
//        count += 1
//    }
//    
//    return s
//    
//}
//
//
//
//
//
//var s = "Hello how are you Contestant", k = 4
//print(truncateSentence(s, k))

//if s.split(separator: " ").count <= k {
//    print(s)
//}
//else {
//    var words = s.split(separator: " ")
//    var count = 0
//    s.removeAll()
//    for character in words {
//        if count == k {
//            break
//        }
//        s += character + " "
//        count += 1
//    }
//
//    print(s)
//}




































//func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
//    var result1 = ""
//    var result2 = ""
//    for character in word1 {
//        result1 += character
//    }
//
//    for character in word2 {
//        result2 += character
//    }
//    return result1.elementsEqual(result2)
//}



//var word1 = ["abf", "c"], word2 = ["a", "bc"]
//print(arrayStringsAreEqual(word1, word2))
//var result1 = ""
//var result2 = ""
//for character in word1 {
//    result1 += character
//}
//
//for character in word2 {
//    result2 += character
//}
//print(result1.elementsEqual(result2))



































//func reversePrefix(_ word: String, _ ch: Character) -> String {
//        guard word.contains(ch) else { return word }
//
//        var value = findIndex(of: String(ch), in: word)!
//        var index = word.index(word.startIndex, offsetBy: value)
//        var reverseWords = ""
//        var remainingWords = ""
//
//
//        for (index, character) in word.enumerated() {
//            if index == value {
//                reverseWords += String(character)
//                break
//            }
//            else {
//                reverseWords += String(character)
//            }
//        }
//
//        for (index, character) in word.enumerated() {
//            if index > value {
//                remainingWords += String(character)
//            }
//        }
//
//
//        reverseWords.reverse()
//
//        return reverseWords + remainingWords
//
//
//}
//
//func findIndex(of string: String, in str: String) -> Int? {
//    for (index, char) in str.enumerated() {
//        var found = true
//        for (offset, char2) in string.enumerated() {
//            if str[str.index(str.startIndex, offsetBy: index + offset)] != char2 {
//                found = false
//                break
//            }
//        }
//        if found {
//            return index
//        }
//    }
//    return nil
//}
//
//extension String {
//    mutating func reverse () {
//        var strArr = [String] ()
//        for character in self {
//            strArr.append(String(character))
//        }
//        strArr.reverse()
//        self.removeAll()
//        for character in strArr {
//            self += character
//        }
//    }
//}

//import Foundation
//
//var word = "abcdefd", ch:Character = "d"
//
//print(reversePrefix(word, ch))
//if word.contains(ch) {
//    var value = findIndex(of: String(ch), in: word)!
//    var index = word.index(word.startIndex, offsetBy: value)
//    var reverseWords = ""
//    var remainingWords = ""
//    print(value)
//
//    for (index, character) in word.enumerated() {
//        if index == value {
//            reverseWords += String(character)
//            break
//        }
//        else {
//            reverseWords += String(character)
//        }
//    }
//
//    for (index, character) in word.enumerated() {
//        if index > value {
//            remainingWords += String(character)
//        }
//    }
//
//    print(remainingWords)
//
//    reverseWords.reverse()
//    print(reverseWords)
//    print(reverseWords + remainingWords)
//    word.remove(at: index)
//    word.insert(ch, at: word.startIndex)
//    print(word)
//}

//func findIndex(of string: String, in str: String) -> Int? {
//    for (index, char) in str.enumerated() {
//        var found = true
//        for (offset, char2) in string.enumerated() {
//            if str[str.index(str.startIndex, offsetBy: index + offset)] != char2 {
//                found = false
//                break
//            }
//        }
//        if found {
//            return index
//        }
//    }
//    return nil
//}


































//func mostWordsFound(_ sentences: [String]) -> Int {
//    var max = 0
//    for str in sentences {
//        if str.split(separator: " ").count > max {
//            max = str.split(separator: " ").count
//        }
//    }
//    return max
//    }
//
//var sentences = ["alice and bob love leetcode", "i think so too", "this is great thanks very much"]
//
//print(mostWordsFound(sentences))
//var max = 0
//for str in sentences {
//    if str.split(separator: " ").count > max {
//        max = str.split(separator: " ").count
//    }
//}
//print(max)






























//func interpret(_ command: String) -> String {
//    var command = command
//    command = command.replacingOccurrences(of: "()", with: "o")
//    command = command.replacingOccurrences(of: "(al)", with: "al")
//    return command
//    }


//import Foundation
//
//var command = "G()(al)"

//command = command.replacingOccurrences(of: "()", with: "o")
//command = command.replacingOccurrences(of: "(al)", with: "al")

//print(interpret(command))































//func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
//    if jewels.isEmpty {
//        return 0
//    }
//    var count = 0
//
//    for character in jewels {
//        for char in stones {
//            if character == char {
//                count += 1
//            }
//        }
//    }
//    return count
//    }
//
////var count = 0
//var jewels = "z", stones = "ZZ"
//print(numJewelsInStones(jewels, stones))
//
//for character in jewels {
//    for char in stones {
//        if character == char {
//            count += 1
//        }
//    }
//}
//print(count)































//func findPermutationDifference(_ s: String, _ t: String) -> Int {
//    if s.isEmpty {
//        return 0
//    }
//    var sum = 0
//    func findIndex(of string: String, in str: String) -> Int? {
//       for (index, char) in str.enumerated() {
//           var found = true
//           for (offset, char2) in string.enumerated() {
//               if str[str.index(str.startIndex, offsetBy: index + offset)] != char2 {
//                   found = false
//                   break
//               }
//           }
//           if found {
//               return index
//           }
//       }
//       return nil
//    }
//
//    for (index,character) in s.enumerated() {
//        guard var value = findIndex(of: String(character), in: t) else { continue }
//        sum += abs(index - value)
//    }
//    return sum
//}
//
//var s = "abcde", t = "edbac"
//print(findPermutationDifference(s, t))
//var sum = 0
//func findIndex(of string: String, in str: String) -> Int? {
//   for (index, char) in str.enumerated() {
//       var found = true
//       for (offset, char2) in string.enumerated() {
//           if str[str.index(str.startIndex, offsetBy: index + offset)] != char2 {
//               found = false
//               break
//           }
//       }
//       if found {
//           return index
//       }
//   }
//   return nil
//}
//
//for (index,character) in s.enumerated() {
//    guard var value = findIndex(of: String(character), in: t) else { continue }
//    sum += abs(index - value)
//}
//print(sum)
//print(findIndex(of: "a", in: t))



































//import Foundation
//func defangIPaddr(_ address: String) -> String {
//        return address.replacingOccurrences(of: ".", with: "[.]")
//}
//
//var address = "1.1.1.1"
//
//
//print(defangIPaddr(address))
































//func scoreOfString(_ s: String) -> Int {
//    if s.isEmpty {
//        return 0
//    }
//    var sum = 0
//    var arr = [Int]()
//
//    for character in s {
//        guard var value = character.asciiValue else { continue }
//        arr.append(Int(value))
//    }
//
//    for index in 0..<arr.count {
//        if index == arr.count - 1 {
//            continue
//        }
//        sum += abs(arr[index] - arr[index + 1])
//    }
//    return sum
//}
//
//
//var s = ""
////print(s.isEmpty)
//print(scoreOfString(s))
//var sum = 0
//var arr = [Int]()
//
//for character in s {
//    guard var value = character.asciiValue else { continue }
//    arr.append(Int(value))
//}
//print(arr)
//
//for index in 0..<arr.count {
//    if index == arr.count - 1 {
//        continue
//    }
//    sum += abs(arr[index] - arr[index + 1])
//}
//print(sum)






























//func findArray(_ pref: [Int]) -> [Int] {
//    var arr = [Int]()
//    var max = pref.max()!
//    var strMax = String(max,radix: 2)
//    if pref.count < 2 {
//        return pref
//    }
//    else {
//        arr.append(pref[0])
//        var count = 1
//
//        for index in 1..<pref.count {
//            var sum = arr[0]
//
//            if count > 1 {
//                for j in 1..<count {
//                    sum ^= arr[j]
//                }
//            }
//
//            sum ^= pref[index]
//            count += 1
//            arr.append(sum)
//
//
//        }
//    }
//
//    return arr
//    }
//
//var pref = [5,2,0,3,1]
//
//print(findArray(pref))
//var arr = [Int]()
//var max = pref.max()!
//var strMax = String(max,radix: 2)
//if pref.count < 2 {
//    print(pref)
//}
//else {
//    arr.append(pref[0])
//    var count = 1
//
//    for index in 1..<pref.count {
//        var sum = arr[0]
//
//        if count > 1 {
//            for j in 1..<count {
//                sum ^= arr[j]
//            }
//        }
//
//        sum ^= pref[index]
//        count += 1
//        arr.append(sum)
//
//
//    }
//}
//
//print(arr)



































//func maximumWealth(_ accounts: [[Int]]) -> Int {
//    var max = 0
//    for row in accounts {
//        var sum = 0
//        for j in 0..<row.count {
//            sum += row[j]
//        }
//        if sum > max {
//            max = sum
//        }
//    }
//    return max
//    }
//
//
//
//var accounts = [[1,2,3],[3,2,1]]
//print(maximumWealth(accounts))
//var max = 0

//for row in board {
//
//    for j in 0..<row.count {
//        print(board[j])
//    }
//}
//for row in accounts {
//    var sum = 0
//    for j in 0..<row.count {
//        sum += row[j]
//    }
//    if sum > max {
//        max = sum
//    }
//}
//print(max)
//print(accounts.count)






































//func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
//    var arr = [Int]()
//
//    for index in 0..<n {
//        arr.append(nums[index])
//        arr.append(nums[n + index])
//    }
//    return arr
//}
//
//var nums = [1,2,3,4,4,3,2,1]
//var n = 4
////var arr = [Int]()
////
////for index in 0..<n {
////    arr.append(nums[index])
////    arr.append(nums[n + index])
////}
////print(arr)
//print(shuffle(nums, n))







































//func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
//    var needIndex = [Int]()
//    for index in 0..<words.count {
//        if words[index].contains(x) {
//            needIndex.append(index)
//        }
//    }
//    return needIndex
//    }



//var words = ["abc","bcd","aaaa","cbc"]
//
//var word:Character = "a"
//print(findWordsContaining(words, word))
//var needIndex = [Int]()
//for index in 0..<words.count {
//    if words[index].contains(word) {
//        needIndex.append(index)
//    }
//}
//print(needIndex)






































//func numIdenticalPairs(_ nums: [Int]) -> Int {
//    var count = 0
//    for i in 0..<nums.count {
//        for j in 0..<nums.count {
//            if nums[i] == nums[j] {
//                if i < j {
//                    count += 1
//                }
//            }
//        }
//    }
//    return count
//    }
//
//
//var nums = [1,2,3,1,1,3]
//print(numIdenticalPairs(nums))
//var count = 0
//for i in 0..<nums.count {
//    for j in 0..<nums.count {
//        if nums[i] == nums[j] {
//            if i < j {
//                count += 1
//            }
//        }
//    }
//}
//print(count)






































//func finalValueAfterOperations(_ operations: [String]) -> Int {
//    var x = 0
//
//    for operation in operations {
//        if operation.contains("+") {
//            x += 1
//        }
//        else {
//            x -= 1
//        }
//    }
//    return x
//    }
//
//
//var operations = ["++X","++X","X++"]
//print(finalValueAfterOperations(operations))
//var x = 0
//
//for operation in operations {
//    if operation.contains("+") {
//        x += 1
//    }
//    else {
//        x -= 1
//    }
//}

//print(x)








































//func minimumOperations(_ nums: [Int]) -> Int {
//    var count = 0
//
//    for number in nums {
//        if number % 3 != 0 {
//            count += 1
//        }
//    }
//    return count
//}
//
//
//
//
//
//var nums = [3,6,9]
//print(minimumOperations(nums))
//var count = 0
//
//for number in nums {
//    if number % 3 != 0 {
//        count += 1
//    }
//}
//print(count)




































//func buildArray(_ nums: [Int]) -> [Int] {
//    var ans = [Int]()
//
//    for index in 0..<nums.count {
//        ans.append(nums[nums[index]])
//    }
//    return ans
//    }
//
//var nums = [5,0,1,2,3,4]
//
//print(buildArray(nums))
//var ans = [Int]()
//
//for index in 0..<nums.count {
//    ans.append(nums[nums[index]])
//}
//print(ans)










































//func getConcatenation(_ nums: [Int]) -> [Int] {
//    var ans = [Int]()
//
//    for i in 0..<nums.count {
//        ans.append(nums[i])
//    }
//    for i in 0..<nums.count {
//        ans.append(nums[i])
//    }
//    return ans
//    }
//
//
//
//var nums = [1,2,1]
//
//print(getConcatenation(nums))

//print(nums)
//print(ans)




































//func passThePillow(_ n: Int, _ time: Int) -> Int {
//    var count = 0.0
//    var check = 0.0
//    var numberInt = 0
//    var numberAdd = 0
//
//    if (n > time) {
//        return 1 + time
//    }
//    else {
//        // 5.0 / 5.0 = 1.0
//        count = Double(time)/Double(n - 1)
//
//        // if 1.0 != 1.0
//        if Double(Int(count)) != count {
//            check = count + 1.0
//        }
//        if Int(check) == 1 {
//            return n - 1
//        }
//
//        numberAdd = time - Int(count) * (n - 1)
//
//        if Int(count) % 2 == 0 {
//            numberInt = 1
//            numberInt += numberAdd
//        }
//        else {
//            numberInt = n
//            numberInt -= numberAdd
//        }
//    }
//    return numberInt
//}
//
//
//
//var n = 5
//
//var time = 8
//print(passThePillow(n, time))

//var count = 0.0
//var check = 0.0
//var numberInt = 0
//var numberAdd = 0
//// 1 -> 2 -> 3 -> 4 -> 5 || 5 -> 4 -> 3 -> 2 -> 1
////if (n - 1 == time) {
////    print(n)
////}
//if (n > time) {
//    print(1 + time)
////    numberInt = 1 + time
//}
//else {
//    // 5.0 / 5.0 = 1.0
//    count = Double(time)/Double(n - 1)
//
//    // if 1.0 != 1.0
//    if Double(Int(count)) != count {
//        check = count + 1.0
//    }
//    if Int(check) == 1 {
//        print(n - 1)
//    }
//
//    numberAdd = time - Int(count) * (n - 1)
//
//    if Int(count) % 2 == 0 {
//        numberInt = 1
//        numberInt += numberAdd
//    }
//    else {
//        numberInt = n
//        numberInt -= numberAdd
//    }
//    print(numberInt)
//
//}



































//func separateDigits(_ nums: [Int]) -> [Int] {
//    var nums = nums
//    var text = [String]()
//    var count = 0
//    for i in 0..<nums.count {
//        if nums[i] < 10 {
//            count += 1
//        }
//    }
//
//    if count == nums.count {
//        return nums
//    }
//    else {
//        for number in nums {
//            text.append(String(number))
//        }
//
//        nums.removeAll()
//
//        for str in text {
//            var te = String(str)
//            for character in 0..<str.count {
//                if let value = Int(String(te.first!)) {
//                    nums.append(value)
//
//                }
//                te = String(te.dropFirst())
//            }
//        }
//    }
//    return nums
//
//}


//var nums = [1,3,2,9]

//var text = [String]()
//var count = 0
//for i in 0..<nums.count {
//    if nums[i] < 10 {
//        count += 1
//    }
//}
//
//if count == nums.count {
//
//}
//else {
//    for number in nums {
//        text.append(String(number))
//    }
//
//    nums.removeAll()
//
//    for str in text {
//        var te = String(str)
//        for character in 0..<str.count {
//            if let value = Int(String(te.first!)) {
//                nums.append(value)
//
//            }
//            te = String(te.dropFirst())
//        }
//    }
//    print(text[0].dropFirst())
//    text[0] = String(text[0].dropFirst())
//    print(text[0])

//print(separateDigits(nums))






































//func alternateDigitSum(_ n: Int) -> Int {
//    var n = n
//    var text = String(n)
//    n = 1
//    var sum = 0
//    for character in text {
//        if let value = Int(String(character)) {
//            if n % 2 == 1 {
//                sum += value
//            }
//            else {
//                sum += value * (-1)
//            }
//            n += 1
//        }
//    }
//    return sum
//    }
//
//
//var n = 5666
//
//print(alternateDigitSum(n))



































//func maximumValue(_ strs: [String]) -> Int {
//    var maxStr = 0
//
//    for i in 0..<strs.count {
//        if Int(strs[i]) == nil {
//            if strs[i].count > maxStr {
//                maxStr = strs[i].count
//            }
//        }
//        else {
//            if Int(strs[i])! > maxStr {
//                maxStr = Int(strs[i])!
//            }
//        }
//    }
//    return maxStr
//}
//
//
//var strs = ["5232","yv","22","c","yawgs","928","4003","2"]
//
////var maxStr = 0
////
////for i in 0..<strs.count {
////    if Int(strs[i]) == nil {
////        if strs[i].count > maxStr {
////            maxStr = strs[i].count
////        }
////    }
////    else {
////        if Int(strs[i])! > maxStr {
////            maxStr = Int(strs[i])!
////        }
////    }
////}
//
////print(maxStr)
//print(maximumValue(strs))




































//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//    var nums3 = [Int] ()
//
//    var m = m
//
//    var index = m + n
//    var count = 0
//    for i in 0..<index {
//        if m > 0 {
//            nums3.append(nums1[i])
//            m -= 1
//        }
//        else {
//            nums3.append(nums2[count])
//            count += 1
//        }
//    }
//    nums3.sort()
//    nums1.removeAll()
//
//    nums1 = nums3
//}
//
//
//
//var nums1 = [1,2,3,0,0,0]
//
//
//var nums2 = [2,4,5]
//var m = 3
//var n = 3
//print(nums1)
//merge(&nums1,m,nums2,n)
//print(nums1)






























//func lengthOfLastWord(_ s: String) -> Int {
//    var tex = s.split(separator: " ")
//
//
//    return tex.last!.count
//}
//
//var text = "Hello World"
//
////print(tex.last!.count)
//print(lengthOfLastWord(text))






































//import Foundation
//
//func solve() {
//    let input = readLine()!.split(separator: " ").map { Int($0)! }
//    let (N, M) = (input[0], input[1])
//
//    var idToName = [String: String]()
//    var nameToIds = [String: Set<String>]()
//
//    for _ in 0..<N {
//        let name = readLine()!.lowercased()
//        let id = readLine()!.lowercased()
//        idToName[id] = name
//        if nameToIds[name] == nil {
//            nameToIds[name] = Set<String>()
//        }
//        nameToIds[name]!.insert(id)
//    }
//
//    var perfectMatches = 0
//    var satisfactoryMatches = 0
//
//    for _ in 0..<M {
//        let letterName = readLine()!.lowercased()
//        let letterId = readLine()!.lowercased()
//
//        if let correctName = idToName[letterId] {
//            if letterName == correctName {
//                perfectMatches += 1
//            } else {
//                satisfactoryMatches += 1
//            }
//        } else {
//            if let ids = nameToIds[letterName], ids.count == 1 {
//                satisfactoryMatches += 1
//            }
//        }
//    }
//
//    print("\(perfectMatches) \(satisfactoryMatches)")
//}
//
//solve()
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//////
//////  main.swift
//////  ProjectX
//////
//////  Created by Erkebulan Massainov on 10.08.2024.
//////
////
////
////import Foundation
////
////func dayOfWeek(N: Int, L: Int, daysInMonths: [Int], today: (d: Int, m: Int, y: Int, t: Int), event: (d: Int, m: Int, y: Int)) -> Int {
////    func daysSinceStart(_ d: Int, _ m: Int, _ y: Int) -> Int {
////
////        let daysInYear = daysInMonths.reduce(0, +)
////        let daysFromYears = (y - 1) * daysInYear
////
////
////        let daysFromMonths = daysInMonths.prefix(m - 1).reduce(0, +)
////
////
////        return daysFromYears + daysFromMonths + d
////    }
////
////
////    let daysToday = daysSinceStart(today.d, today.m, today.y)
////    let daysEvent = daysSinceStart(event.d, event.m, event.y)
////
////
////    let daysDifference = daysEvent - daysToday
////    let resultDayOfWeek = (today.t + daysDifference % L + L) % L
////
////
////    return resultDayOfWeek == 0 ? L : resultDayOfWeek
////}
////
////let input1 = readLine()!.split(separator: " ").map { Int($0)! }
////let N = input1[0]
////let L = input1[1]
////
////let daysInMonths = readLine()!.split(separator: " ").map { Int($0)! }
////
////let todayInput = readLine()!.split(separator: " ").map { Int($0)! }
////let today = (d: todayInput[0], m: todayInput[1], y: todayInput[2], t: todayInput[3])
////
////let eventInput = readLine()!.split(separator: " ").map { Int($0)! }
////let event = (d: eventInput[0], m: eventInput[1], y: eventInput[2])
////
////let result = dayOfWeek(N: N, L: L, daysInMonths: daysInMonths, today: today, event: event)
////
////print(result)
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
//////
//////import Foundation
//////
//////let fileManager = FileManager.default
//////print(fileManager)
//////let filePath = "input.txt"
//////print(filePath)
//////
//////if fileManager.fileExists(atPath: filePath) {
//////    print("File exists")
//////} else {
//////    print("File does not exist")
//////}
//////reads data from "myfile.txt"
//////if let fileData = fileManager.contents(atPath: filePath) {
//////    if let fileContentString = String(data: fileData, encoding: .utf8) {
//////        print("File contents:")
//////        print(fileContentString)
//////    }
//////} else {
//////    print("Failed to read file")
//////}
////
//////var month = 2
//////var dayInWeek = 3
//////var monthDays = [4,5]
//////var todaysDate = [1,1,1,1]
//////// 0 - day , 1 - month, 2 - year, 3 - startDayInWeek
//////var needDate = [3,2,12]
//////
//////var needWeekend = [Int]()
//////var days = 0
//////for day in monthDays {
//////    days += day
//////}
//////var weekInMonth = 0.0
//////
//////if days != 0 {
//////    weekInMonth = Double(days)/Double(dayInWeek)
//////
//////    days = Int(weekInMonth)
//////    if Double(days) < weekInMonth {
//////        weekInMonth += 1
//////    }
//////    var weeksInMonth = Int(weekInMonth)
//////
//////
//////}
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
//////var board = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]
//////
//////for row in board {
//////
////////    for j in 0..<row.count {
////////        print(board[j])
////////    }
//////}
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
//////func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
//////
//////    var count = 0
//////    var max = 0
//////    for i in stride(from: 0, to: nums.count , by: 1) {
//////        if nums[i] == 1 {
//////            count += 1
//////        }
//////        else {
//////            count = 0
//////        }
//////        if count > max {
//////            max = count
//////        }
//////    }
//////
//////    return max
//////}
//////
//////
//////var nums = [0,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1]
//////var nums = [0]
//////var number = true
//////
//////var count = 0
//////
//////var indexArr = [Int] ()
//////var countArr = [Int] ()
//////
//////for i in 0..<nums.count {
//////    if count == 0 && nums[i] == 1 {
//////        indexArr.append(i)
//////        count += 1
//////    }
//////    else if nums[i] == 1 {
//////        count += 1
//////    }
//////    else if count > 0 && nums[i] == 0 {
//////        countArr.append(count)
//////        count = 0
//////    }
//////    if i == nums.count - 1 && nums[nums.count - 1] == 1 {
//////        countArr.append(count)
//////    }
//////}
//////var index = -1
//////for i in 0..<countArr.count {
//////    if countArr.max()! == countArr[i] {
//////        index = i
//////        break
//////    }
//////}
//////print(indexArr[index])
//////print(countArr[index])
////
////
//////print(findMaxConsecutiveOnes(nums))
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
//////import Foundation
//////
//////
//////func thirdMax(_ nums: [Int]) -> Int {
//////    var nums = nums
//////    var max = [Int] ()
//////    var arr = [Int] ()
//////    max.append(nums.max()!)
//////
//////    if max.count != 0 {
//////        for number in nums {
//////            if max[0] != number {
//////                arr.append(number)
//////            }
//////        }
//////    }
//////    else {
//////        return 0
//////    }
//////    if arr.isEmpty {
//////        return max[0]
//////    }
//////    nums.removeAll()
//////    max.append(arr.max()!)
//////
//////    if !arr.isEmpty {
//////        for number in arr {
//////            if max[1] != number {
//////                nums.append(number)
//////            }
//////        }
//////    }
//////    else {
//////        return max[0]
//////    }
//////
//////    if nums.isEmpty {
//////        return max[0]
//////    }
//////    arr.removeAll()
//////    max.append(nums.max()!)
//////
//////    if !nums.isEmpty {
//////        for number in nums {
//////            if max[2] != number {
//////                arr.append(number)
//////            }
//////        }
//////    }
//////    else {
//////        return max[1]
//////    }
//////    return max[2]
//////}
//////
//////var nums = [1,2,3]
////////var nums1 = [Int] ()
//////
////////var max = [Int] ()
////////var arr = [Int] ()
////////max.append(nums.max()!)
////////
////////if max.count != 0 {
////////    for number in nums {
////////        if max[0] != number {
////////            arr.append(number)
////////        }
////////    }
////////}
////////nums.removeAll()
////////max.append(arr.max()!)
////////
////////for number in arr {
////////    if max[1] != number {
////////        nums.append(number)
////////    }
////////}
////////
////////arr.removeAll()
////////max.append(nums.max()!)
////////
////////if max.count > 2 {
////////    for number in nums {
////////        if max[2] != number {
////////            arr.append(number)
////////        }
////////    }
////////}
//////
//////
//////print(thirdMax(nums))
//////print(nums1.isEmpty)
////
