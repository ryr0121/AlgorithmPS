class Solution {
    boolean solution(String s) {
        int p_cnt = 0;
        int y_cnt = 0;
        for(int i=0; i<s.length(); i++) {
            if (s.charAt(i) == 'p' || s.charAt(i) == 'P') p_cnt++;
            if (s.charAt(i) == 'y' || s.charAt(i) == 'Y') y_cnt++;
        }
        return p_cnt == y_cnt;
    }
}