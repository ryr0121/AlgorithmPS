class Solution {
    public boolean solution(String s) {
        if (s.length() == 4 || s.length() == 6) {
            for(int i=0; i<s.length(); i++) {
                int asc = (int)s.charAt(i);
                if (asc < 48 || asc > 57) return false;
            }
            return true;
        } else return false;
    }
}