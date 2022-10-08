var words = [String]()
var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}
var  tempArray = words

func swap(words: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = words[firstIndex]
    words[firstIndex] = words[secondIndex]
    words[secondIndex] = temp
}

func sort() {
    var tempCount = 0
    var totalCount = 0
    var functIn = true
    var unsort = words
    print("Pass: \(0), Swaps: \(tempCount)/\(totalCount), Array: \(words)")
    while(functIn) {
        for i in 0..<words.count {
            for k in 1 ..< words.count - i {
                if (words[k]<words[k-1]){
                    functIn = true
                    tempCount += 1
                    totalCount += 1
                    swap(words:&words, firstIndex: k, secondIndex: k - 1)
                }
            }
            print("Pass: \(i + 1), Swaps: \(tempCount)/\(totalCount), Array: \(words)")
            if(tempCount == 0){
                functIn = false
                break
            }
            tempCount = 0
        }
    }
}
sort()
