import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;
        StringBuilder sb = new StringBuilder();
        
        int T = Integer.parseInt(br.readLine());
        while(T-- > 0) {
            st = new StringTokenizer(br.readLine());
            int M = Integer.parseInt(st.nextToken());
            int N = Integer.parseInt(st.nextToken());
            int x = Integer.parseInt(st.nextToken());
            int y = Integer.parseInt(st.nextToken());

            sb.append(getResult(M,N,x,y)).append("\n");
        }
        System.out.println(sb);
    }

    public static int getResult(int M, int N, int x, int y) {
        if(M == x) x = 0;
        if(N == y) y = 0;
        int l = lcm(M,N);
        for(int i=x; i<=l; i+=M) {
            if(i == 0) continue;
            if(i%N == y) return i;
        }
        return -1;
    }

    public static int lcm(int a, int b) {
        return a/gcd(a,b)*b;
    }

    public static int gcd(int a, int b) {
        if(a == 0) return b;
        return gcd(b%a, a);
    }
}