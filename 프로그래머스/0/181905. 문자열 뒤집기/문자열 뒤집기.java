class Solution {
    public String solution(String my_string, int s, int e) {
        char[] splited = my_string.toCharArray();
        
        for(int i=0; i<my_string.length(); i++) {
            if(i >= s && i <= (s+e)/2) {
                char tmp = splited[i];
                splited[i] = splited[s+e-i];
                splited[s+e-i] = tmp;
            }
        }
        
        String answer = "";
        for(char c : splited) answer += Character.toString(c);
        
        return answer;
    }
}