import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());

        int[] d = new int[N+1];
        d[1] = 0;
        for(int i=2; i<=N; i++) {
            d[i] = d[i-1] + 1;
            if(i%2 == 0) d[i] = Math.min(d[i], d[i/2]+1);
            if(i%3 == 0) d[i] = Math.min(d[i], d[i/3]+1);
        }
        System.out.println(d[N]);
    }
}