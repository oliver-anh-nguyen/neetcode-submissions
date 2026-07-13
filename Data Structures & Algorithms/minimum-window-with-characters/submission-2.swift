class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        if t.isEmpty {
            return ""
        }
        var countT = [Character: Int]()
        var window = [Character: Int]()
        for c in t {
            countT[c, default: 0] += 1
        }

        var have = 0
        var need = countT.count
        var res = [-1, -1], resLen = Int.max
        let chars = Array(s)
        var l = 0

        for r in 0..<chars.count {
            let c = chars[r]
            window[c, default: 0] += 1

            if let count = countT[c], window[c] == count {
                have += 1
            }

            while have == need {
                if (r - l + 1) < resLen {
                    res = [l, r]
                    resLen = r - l + 1
                }
                let leftChar = chars[l]
                window[leftChar, default: 0] -= 1
                if let count = countT[leftChar], window[leftChar]! < count {
                    have -= 1
                }
                l += 1 
            }
        }

        let (left, right) = (res[0], res[1])
        return resLen != Int.max ? String(chars[left...right]) : ""
    }
}
