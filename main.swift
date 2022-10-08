
// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["paper", "tree", "apple", "book", "sun"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

// Add your code below:

func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp
}

func sort() {
    var tempCount = 0
    var totalCount = 0
    var functIn = true
    var unsort = unsortedStrings
    print("Pass: \(0), Swaps: \(tempCount)/\(totalCount), Array: \(unsort)")
    while(functIn) {
        for i in 0..<unsort.count {
            for k in 1 ..< unsort.count - i {
                if (unsort[k]<unsort[k-1]){
                    functIn = true
                    tempCount += 1
                    totalCount += 1
                    swap(strings:&unsort, firstIndex: k, secondIndex: k - 1)
                }
            }
            print("Pass: \(i + 1), Swaps: \(tempCount)/\(totalCount), Array: \(unsort)")
            if(tempCount == 0){
                functIn = false
                break
            }
            tempCount = 0
        }
    }
}
sort()
