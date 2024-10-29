class Solution {
    public String solution(String s) {
        int idx = s.length() / 2;
        if (s.length()%2 == 0) return Character.toString(s.charAt(idx-1)) + Character.toString(s.charAt(idx)); 
        else return Character.toString(s.charAt(idx));
    }
}