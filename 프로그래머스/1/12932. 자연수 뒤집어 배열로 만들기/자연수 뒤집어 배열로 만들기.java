class Solution {
    public int[] solution(long n) {
        String str = Long.toString(n);
        int[] answer = new int[str.length()];
        for(int i=str.length()-1; i>-1; i--) {
            answer[str.length()-1-i] = str.charAt(i)-'0';
        }
        return answer;
    }
}