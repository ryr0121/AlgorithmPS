class Solution {
    public String solution(String n_str) {
        String answer = "";
        char[] split_str = n_str.toCharArray();
        boolean flag = true; // 처음으로 0이 아닌 숫자가 나온다면 false로 변경
        for(char c : split_str) {
            if(flag && c == '0') continue;
            else {
                if(flag) flag = false;
                answer += Character.toString(c);
            }
        }
        return answer;
    }
}