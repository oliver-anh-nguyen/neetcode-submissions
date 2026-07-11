class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        if t.isEmpty {
            return ""
        }
        var countT = [Character: Int]()
        for c in t {
            countT[c, default: 0] += 1
        }
        var res = [-1, -1]
        var resLen = Int.max
        let chars = Array(s)
        for i in 0..<chars.count {
            var countS = [Character: Int]()
            for j in i..<chars.count {
                countS[chars[j], default: 0] += 1
                var flag = true
                for (c, count) in countT {
                    if count > countS[c, default: 0] {
                        flag = false
                        break
                    }
                }
                if flag && (j - i + 1) < resLen {
                    resLen = j - i + 1
                    res = [i, j]
                }
            }
        }
        let (l, r) = (res[0], res[1])
        return resLen != Int.max ? String(chars[l...r]) : ""
    }
}
