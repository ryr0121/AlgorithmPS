class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var res = [0,0]
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if (i != j) && (nums[i]+nums[j])==target {
                    res[0] = i < j ? i : j
                    res[1] = i > j ? i : j
                }
            }
        }
        return res
    }
}