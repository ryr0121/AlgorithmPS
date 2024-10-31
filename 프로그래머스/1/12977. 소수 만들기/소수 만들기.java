class Solution {
    static int[] comb;
    static int n;
    static int answer = 0;
    
    public int solution(int[] nums) {
        comb = new int[3];
        n = nums.length;
        
        Solution.dfs(0, 0, nums);
        return answer;
    }
    
    public static void dfs(int l, int s, int[] nums) {
        if(l == 3) {
            int sum = 0;
            for(int n : comb) sum += n;
            for(int i=2; i<sum; i++) if(sum%i == 0) return;
            answer++;
        } else {
            for(int i=s; i<n; i++) {
                comb[l] = nums[i];
                dfs(l+1, i+1, nums);
            }
        }
    }
}