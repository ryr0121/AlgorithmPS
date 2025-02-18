class Solution {
    public int solution(int n) {
        char[] n_chars = Integer.toBinaryString(n).toCharArray();
        int n_cnt = 0;
        for(char c : n_chars) if(c == '1') n_cnt++;
        
        int answer = n+1;
        
        while(true) {
            char[] v = Integer.toBinaryString(answer).toCharArray();
            int v_cnt = 0;
            for(char c : v) if(c == '1') v_cnt++;
            
            if(n_cnt == v_cnt) break;
            else answer++;
        }
        return answer;
    }
}