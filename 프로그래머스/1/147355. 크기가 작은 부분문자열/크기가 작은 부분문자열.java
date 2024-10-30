class Solution {
    public int solution(String t, String p) {
        int answer = 0;
        int t_len = t.length();
        int p_len = p.length();
        
        for(int i=0; i<=t_len-p_len; i++) {
            String sub = t.substring(i,i+p_len);
            if(Long.parseLong(p) >= Long.parseLong(sub)) answer++;
        }
        return answer;
    }
}