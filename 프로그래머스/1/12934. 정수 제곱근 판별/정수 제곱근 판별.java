import java.util.*;

class Solution {
    public long solution(long n) {
        long answer = (long) Math.sqrt((double)n);
        if (answer == Math.sqrt((double)n)) {
            answer += 1;
            return answer*answer; 
        } 
        else return -1;
    }
}