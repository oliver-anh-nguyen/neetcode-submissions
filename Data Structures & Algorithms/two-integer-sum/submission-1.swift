class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var A = [(Int, Int)]()
        for (i, num) in nums.enumerated() {
            A.append((num, i))
        }
        A.sort {$0.0 < $1.0}
        var i = 0
        var j = nums.count - 1
        while i < j {
            let cur = A[i].0 + A[j].0
            if cur == target {
                return [min(A[i].1, A[j].1), max(A[i].1, A[j].1)]
            } else if cur < target {
                i += 1
            } else {
                j -= 1
            }
        }
        return []
    }
}
