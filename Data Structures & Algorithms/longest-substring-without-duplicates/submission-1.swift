class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        let n = chars.count
        var res = 0
        for i in 0..<n {
            var charSet = Set<Character>()
            for j in i..<n {
                let cur = chars[j]
                if charSet.contains(cur) {
                    break
                }
                charSet.insert(cur)
            }
            res = max(res, charSet.count)
            if (n-i) <= res {
                break
            }
        }
        return res
    }
}
