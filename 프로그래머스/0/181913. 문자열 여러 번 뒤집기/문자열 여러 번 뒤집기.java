class Solution {
    public String solution(String my_string, int[][] queries) {
        char[] chr = my_string.toCharArray();
        for(int[] query : queries) {
            int mid = (query[0]+query[1])/2 + 1;
            for(int i=query[0]; i<mid; i++) {
                char tmp = chr[i];
                chr[i] = chr[query[0]+query[1]-i];
                chr[query[0]+query[1]-i] = tmp;
            }
        }
        String answer = "";
        for(char c : chr) answer += Character.toString(c);
        return answer;
    }
}