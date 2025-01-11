import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static int N, S;
    static int[] nums;
    static int answer = 0;
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        N = sc.nextInt();
        S = sc.nextInt();
        nums = new int[N];
        
        for(int i=0; i<N; i++) nums[i] = sc.nextInt();

        getPart(0,0);
        if(S == 0) answer--;
        System.out.println(answer);
    }

    static void getPart(int idx, int sum) {
        if(idx == N) {
            if(sum == S) answer++;
            return;
        }
        getPart(idx+1, sum);
        getPart(idx+1, sum+nums[idx]);
    }
}