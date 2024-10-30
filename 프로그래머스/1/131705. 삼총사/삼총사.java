class Solution {
    static int answer = 0;
    static int[] comb = new int[3];
    
    public int solution(int[] number) {
        Solution.dfs(number, 0, 0);
        return answer;
    }
    
    public static void dfs(int[] num, int l, int s) {
        if(l == 3) {
            int sum = 0;
            for(int c:comb) sum += c;
            if(sum == 0) answer++;
            
        } else {
            for (int i=s; i<num.length; i++) {
                comb[l] = num[i];
                dfs(num, l+1, i+1);
            }
        }
    }
}