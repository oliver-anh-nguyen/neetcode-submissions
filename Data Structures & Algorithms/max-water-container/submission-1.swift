class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var res = 0
        for i in 0..<heights.count {
            for j in (i+1)..<heights.count {
                res = max(res, min(heights[i], heights[j]) * (j-i))
            }
        }
        return res
    }
}
