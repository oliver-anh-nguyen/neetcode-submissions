class Solution {
    func isValid(_ s: String) -> Bool {
        var str = s
        while str.contains("()") || str.contains("{}") || str.contains("[]") {
            str = str.replacingOccurrences(of: "()", with: "")
            str = str.replacingOccurrences(of: "[]", with: "")
            str = str.replacingOccurrences(of: "{}", with: "")
        }
        return str.isEmpty
    }
}
