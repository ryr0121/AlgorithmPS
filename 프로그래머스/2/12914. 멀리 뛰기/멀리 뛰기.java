class Solution {
    public long solution(int n) {
        if(n < 3) return n;
        
        long[] d = new long[n+1];
        d[1] = 1;
        d[2] = 2;
        for(int i=3; i<=n; i++) d[i] = (d[i-2] + d[i-1])%1234567;
        
        return d[n];
    }
}