










































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
