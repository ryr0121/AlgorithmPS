class Solution {
    static int cnt = 0;
    public int solution(int[] numbers, int target) {
        dfs(numbers, 0, 0, target);
        return cnt;
    }
    
    public void dfs(int[] numbers, int idx, int result, int target) {
        if (idx == numbers.length) {
            if (result == target) cnt++;
            return;
        } else {
            dfs(numbers, idx+1, result+numbers[idx], target);
            dfs(numbers, idx+1, result-numbers[idx], target);
        }
    }
}