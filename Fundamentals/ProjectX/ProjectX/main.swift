func fizzBuzz(_ n: Int) -> [String] {
    var arr = (1...n).map { String($0) }
    for i in 0..<arr.count {
        if Int(String(arr[i]))! % 3 == 0  {
            if Int(String(arr[i]))! % 5 == 0  {
                arr[i] = "Fizz"
                arr[i] += "Buzz"
            } else {
                arr[i] = "Fizz"
            }
        }
        else if Int(String(arr[i]))! % 5 == 0  {
            if Int(String(arr[i]))! % 3 == 0  {
                arr[i] = "Fizz"
                arr[i] += "Buzz"
            } else {
                arr[i] = "Buzz"
            }
        }
    }

    return arr
    }

var n = 15
print(fizzBuzz(n))
//var arr = (1...n).map { String($0) }
//for i in 0..<arr.count {
//    if Int(String(arr[i]))! % 3 == 0 || Int(String(arr[i]))! % 5 == 0 {
//        arr[i] = "Fizz"
//    }
//}
//
//print(arr)
