//func longestPalindrome(_ s: String) -> String {
//        
//    }


var s = "babad"

func combination(_ s : String, _ count: Int) -> String {
    if s == "" {
        print(" ",terminator: "")
    }
    
    for (index,character) in s.enumerated() {
        if index == count{
            break
        }
        return combination(String(character), count)
        print(character,terminator: "")
    }
    return ""
}

combination(s, 3)
