class Solution {
    public int[] solution(int n) {
        if(n%2 == 0) {
            int[] answer = new int[n/2];
            int num = 0;
            for(int i=0; i<n/2; i++) {
                answer[i] = num*2+1;
                num++;
            }
            return answer;
            
        } else {
            int[] answer = new int[n/2+1];
            int num = 0;
            for(int i=0; i<n/2+1; i++) {
                answer[i] = num*2+1;
                num++;
            }
            return answer;
        }
        
    }
}