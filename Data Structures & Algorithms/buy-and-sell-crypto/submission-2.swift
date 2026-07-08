class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var res = 0
        var l = 0, r = 1
        while r < prices.count {
            if prices[l] < prices[r] {
                res = max(res, prices[r] - prices[l])
            } else {
                l = r
            }
            r += 1
        }
        return res
    }
}
