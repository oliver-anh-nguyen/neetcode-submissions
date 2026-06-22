class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for (i, num) in nums.enumerated() {
            let diff = target - num
            if let index = map[diff] {
                return [index, i]
            }
            map[num] = i
        }
        return []
    }
}
