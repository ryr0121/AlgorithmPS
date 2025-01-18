import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int T = Integer.parseInt(br.readLine());
        while(T-- > 0) {
            int n = Integer.parseInt(br.readLine());
            int[] d = new int[100];
            d[1] = 1;
            d[2] = 2; // 1+1, 2
            d[3] = 4; // 1+1+1, 1+2, 2+1, 3

            for(int i=4; i<=n; i++) d[i] = d[i-1] + d[i-2] + d[i-3];
            System.out.println(d[n]);
        }
    }
}