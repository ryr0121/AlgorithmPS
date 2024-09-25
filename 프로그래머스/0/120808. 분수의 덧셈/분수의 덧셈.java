class Solution {
    public int[] solution(int numer1, int denom1, int numer2, int denom2) {
        int[] answer = {0,0};
        
        answer[1] = denom1*denom2;
        answer[0] = numer1*denom2 + numer2*denom1;
        
        int div = 1;
        for(int i=2; i<=1000000; i++) {
            if(answer[0]%i == 0 && answer[1]%i == 0) div = i;
        }
        
        answer[0] /= div;
        answer[1] /= div;
        return answer;
    }
}