class Solution {
    public String solution(String str1, String str2) {
        String answer = "";
        boolean is1Turn = true;
        int idx = 0;
        while(idx < str1.length()) {
            if(is1Turn) answer += Character.toString(str1.charAt(idx));
            else answer += Character.toString(str2.charAt(idx++));
            is1Turn = !is1Turn;
        }
        return answer;
    }
}