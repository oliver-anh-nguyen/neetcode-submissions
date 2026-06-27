class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var res = 0
        let store = Set(nums)

        for num in nums {
            var streak = 0
            var curr = num
            while store.contains(curr) {
                streak += 1
                curr += 1
            }
            res = max(res, streak)
        }
        return res
    }
}
