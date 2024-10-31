import java.util.*;

class Solution {
    public int solution(int number, int limit, int power) {
        int answer = 0;
        for(int n=1; n<=number; n++) {
            int cnt = 0; // 약수의 개수
            for(int i=1; i<=(int)Math.sqrt(n); i++) {
                if(n%i == 0) {
                    cnt++;
                    if(n/i != i) cnt++;
                }
            }
            if(cnt > limit) answer += power;
            else answer += cnt;
        }
        return answer;
    }
}