class Solution {
    public int solution(int n) {
        String conv = Integer.toString(n,3);
        String rev = "";
        for(int i=conv.length()-1; i>-1; i--) rev += Character.toString(conv.charAt(i));
        return Integer.parseInt(rev, 3);
    }
}