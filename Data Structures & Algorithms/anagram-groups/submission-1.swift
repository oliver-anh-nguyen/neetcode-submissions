class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res = [String: [String]]()
        for s in strs {
            let sortedS = String(s.sorted())
            res[sortedS, default: []].append(s)
        }
        return Array(res.values)
    }
}
