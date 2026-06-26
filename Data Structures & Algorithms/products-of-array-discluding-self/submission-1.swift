class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var res = [Int](repeating: 0, count: n)
        for i in 0..<n {
            var prod = 1
            for j in 0..<n {
                if i == j {
                    continue
                }
                prod *= nums[j]
            }
            res[i] = prod
        }
        return res
    }
}
