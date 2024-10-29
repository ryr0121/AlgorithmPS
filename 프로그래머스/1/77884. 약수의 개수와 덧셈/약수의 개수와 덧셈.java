class Solution {
    public int solution(int left, int right) {
        int answer = 0;
        for(int i=left; i<=right; i++) {
            if (checkDivideNumCount(i)) answer += i;
            else answer -= i;
        }
        return answer;
    }
    
    public boolean checkDivideNumCount(int n) {
        // n의 약수가 짝수개면 true, 홀수개면 false 반환
        int cnt = 0;
        for(int i=1; i<=n; i++) if (n%i == 0) cnt++;
        return cnt%2 == 0;
    }
}