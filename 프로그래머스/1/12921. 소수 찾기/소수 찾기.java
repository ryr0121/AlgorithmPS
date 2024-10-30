class Solution {
    public int solution(int n) {
        int answer = 0;
        boolean[] ch = new boolean[n+1];
        for(int i=2; i<=n; i++) {
            if(!ch[i]) {
                answer++;
                for(int j=i; j<=n; j=j+i) ch[j] = true;
            }
        }
        return answer;
    }
}