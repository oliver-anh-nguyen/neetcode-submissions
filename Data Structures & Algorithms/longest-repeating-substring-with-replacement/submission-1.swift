class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var res = 0
        let chars = Array(s)
        for i in 0..<chars.count {
            var count = [Character: Int]()
            var maxf = 0
            for j in i..<chars.count {
                count[chars[j], default: 0] += 1
                maxf = max(maxf, count[chars[j]]!)
                if (j - i + 1) - maxf <= k {
                    res = max(res, j - i + 1)
                }
            }
        }
        return res
    }
}
