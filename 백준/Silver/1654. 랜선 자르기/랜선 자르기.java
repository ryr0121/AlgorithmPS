import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static int K, N;
    static int[] arr;
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        K = Integer.parseInt(st.nextToken());
        N = Integer.parseInt(st.nextToken());
        arr = new int[10005];
        for(int i=0; i<K; i++) arr[i] = Integer.parseInt(br.readLine());

        long s = 1;
        long e = 0x7fffffff;
        while(s < e) {
            long mid = (s+e+1)/2;
            if(check(mid)) s = mid;
            else e = mid-1;
        }
        System.out.println(s);
    }

    public static boolean check(long m) {
        long cur = 0;
        for(int i=0; i<K; i++) cur += arr[i]/m;
        return cur >= N;
    }
}