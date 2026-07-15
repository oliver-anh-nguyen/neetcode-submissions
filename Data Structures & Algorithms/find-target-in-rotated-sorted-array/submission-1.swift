class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count - 1
        while l < r {
            let m = l + (r-l)/2
            if nums[m] > nums[r] {
                l = m + 1
            } else {
                r = m
            }
        }

        let pivot = l
        l = 0
        r = nums.count - 1
        if target >= nums[pivot] && target <= nums[r] {
            l = pivot
        } else {
            r = pivot - 1
        }
        while l <= r {
            let m = (l + r)/2
            if nums[m] == target {
                return m
            } else if nums[m] > target {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return -1
    }
}
