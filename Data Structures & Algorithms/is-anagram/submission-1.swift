class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var countS = [Character: Int]()
        var countT = [Character: Int]()

        let arrayS = Array(s)
        let arrayT = Array(t)

        for i in 0..<s.count {
            countS[arrayS[i], default: 0] += 1
            countT[arrayT[i], default: 0] += 1
        }
        return countS == countT
    }
}
