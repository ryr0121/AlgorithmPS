import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static int N;
    static int answer = 0;

    static boolean[] ch1;
    static boolean[] ch2;
    static boolean[] ch3;
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        N = sc.nextInt();
        
        ch1 = new boolean[N];
        ch2 = new boolean[N+N-1];
        ch3 = new boolean[N+N-1];
        
        queen(0);
        System.out.println(answer);
    }

    static void queen(int idx) {
        if(idx == N) {
            answer++;
            return;
        }
        for(int i=0; i<N; i++) {
            if(ch1[i] || ch2[i+idx] || ch3[idx-i+N-1]) continue;
            ch1[i] = true;
            ch2[i+idx] = true;
            ch3[idx-i+N-1] = true;
            queen(idx+1);
            ch1[i] = false;
            ch2[i+idx] = false;
            ch3[idx-i+N-1] = false;
        }
    }
}