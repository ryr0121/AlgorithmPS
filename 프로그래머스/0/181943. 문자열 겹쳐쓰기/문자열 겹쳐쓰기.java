class Solution {
    public String solution(String my_string, String overwrite_string, int s) {
        String answer = "";
        int j=0;
        for(int i=0; i<s; i++) answer += Character.toString(my_string.charAt(i));
        for(int i=0; i<overwrite_string.length(); i++) {
            answer += Character.toString(overwrite_string.charAt(i));
        }
        for(int i=s+overwrite_string.length(); i<my_string.length(); i++) {
            answer += Character.toString(my_string.charAt(i));
        }
        return answer;
    }
}