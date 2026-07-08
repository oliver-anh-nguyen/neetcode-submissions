class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var res = 0
        for i in 0..<prices.count {
            let buy = prices[i]
            for j in (i+1)..<prices.count {
                let sell = prices[j]
                res = max(res, sell - buy)
            }
        }
        return res
    }
}
