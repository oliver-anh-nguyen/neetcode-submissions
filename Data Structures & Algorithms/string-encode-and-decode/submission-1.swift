class Solution {

    func encode(_ strs: [String]) -> String {
        var res = ""
        for s in strs {
            res += "\(s.count)#\(s)"
        }
        return res
    }

    func decode(_ str: String) -> [String] {
        var res = [String]()
        let sArr = Array(str)
        var i = 0
        while i < sArr.count {
            var j = i
            while sArr[j] != "#" {
                j += 1
            }
            let lengthStr = String(sArr[i..<j])
            let length = Int(lengthStr)!
            i = j + 1
            let end = i + length
            let substring = String(sArr[i..<end])
            res.append(substring)
            i = end
        }
        return res
    }
}
