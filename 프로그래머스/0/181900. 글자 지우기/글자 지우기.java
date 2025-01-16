class Solution {
    public String solution(String my_string, int[] indices) {
        String answer = "";
        for(int i=0; i<my_string.length(); i++) {
            if(isInIndices(i, indices)) continue;
            answer += Character.toString(my_string.charAt(i));
        }
        return answer;
    }
    
    static boolean isInIndices(int idx, int[] indices) {
        for(int i : indices) {
            if(idx == i) return true;
        }
        return false;
    }
}