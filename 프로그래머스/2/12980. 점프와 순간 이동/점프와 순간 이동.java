import java.util.*;

public class Solution {
    public int solution(int n) {
        // N = 1 -> 1칸 점프 (1)
        // N = 2 -> 1칸 점프, 순간이동 (1)
        // N = 3 -> 1칸 점프, 순간이동, 1칸 점프 (2)
        // N = 4 -> 1칸 점프, 순간이동, 순간이동 (1)
        // N = 5 -> 1칸 점프, 순간이동, 순간이동, 1칸 점프 (2)
        // N = 6 -> 1칸 점프, 순간이동, 1칸 점프, 순간이동 (2)
        // N = 7 -> 1칸 점프, 순간이동, 1칸 점프, 순간이동, 1칸 점프 (3)
        // N = 8 -> 1칸 점프, 순간이동, 순간이동, 순간이동 (1)
        // N = 9 -> 1칸 점프, 순간이동, 순간이동, 순간이동, 1칸 점프 (2)
        // N = 10 -> 1칸 점프, 순간이동, 순간이동, 순간이동, 1칸 점프, 1칸 점프 (3)
        
        int answer = 0;
        while(n > 0) {
            if(n%2 == 0) n /= 2;
            else {
                n--;
                answer++;
            }
        }
        return answer;
    }
}