class Solution {
    public int solution(String myString, String pat) {
        String reversed = "";
        for(int i=0; i<myString.length(); i++) {
            reversed += myString.charAt(i) == 'A' ? 'B' : 'A';
        }
        return (reversed.contains(pat) ? 1 : 0);
    }
}