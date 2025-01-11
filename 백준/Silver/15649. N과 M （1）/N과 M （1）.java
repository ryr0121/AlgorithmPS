import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static int[] nums;
    static boolean[] ch;
    static int N, M;
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        N = sc.nextInt();
        M = sc.nextInt();

        nums = new int[M];
        ch = new boolean[N];

        getResult(0);
    }

    static void getResult(int idx) {
        if(idx == M) {
            String str = "";
            for(int i=0; i<M; i++) str += nums[i] + " ";
            System.out.println(str);
            return;
        }
        for(int i=0; i<N; i++) {
            if(!ch[i]) {
                nums[idx] = i+1;
                ch[i] = true;
                getResult(idx+1);
                ch[i] = false;
            }
        }
    }
}