class Solution {
    public int solution(String num_str) {
        int answer = 0;
        char[] split_num_str = num_str.toCharArray();
        for(char c : split_num_str) answer += Character.getNumericValue(c);
        return answer;
    }
}