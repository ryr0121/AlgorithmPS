class Solution {
    public int solution(int[] wallet, int[] bill) {
        int answer = 0;
        while(true) {
            int b_min = getMin(bill);
            int b_max = getMax(bill);
            
            int w_min = getMin(wallet);
            int w_max = getMax(wallet);
            
            if(b_min > w_min || b_max > w_max) {
                if(bill[0] > bill[1]) bill[0] /= 2;
                else bill[1] /= 2;
                answer++;
                
            } else break;
        }
        return answer;
    }
    
    public int getMin(int[] arr) {
        int res = 1000;
        for(int n : arr) res = (n < res) ? n : res;
        return res;
    }
    
    public int getMax(int[] arr) {
        int res = 0;
        for(int n : arr) res = (n > res) ? n : res;
        return res;
    }
}