class Solution {
    public int solution(int n) {
        int answer = 0;
        
        int start = 1;
        int end = 1;
        int sum = 1;
        
        while(start <= end) {
            if(sum < n) { sum += ++end; } 
            else {
                if(sum == n) { answer++; }
                sum -= start++;
            }
        }
        return answer;
    }
}