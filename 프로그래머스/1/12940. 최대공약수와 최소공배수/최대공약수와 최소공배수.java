class Solution {
    public int[] solution(int n, int m) {
        int[] answer = {0,0};
        for(int i=1; i<=n; i++) if(n%i == 0 && m%i == 0) answer[0] = i;
        for(int i=m; i<=n*m; i++) {
            if(i%n == 0 && i%m == 0) {
                answer[1] = i;
                break;
            }
        }
        return answer;
    }
}