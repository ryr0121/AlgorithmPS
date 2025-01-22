import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        int N = Integer.parseInt(st.nextToken());
        int K = Integer.parseInt(st.nextToken());

        int[][] d = new int[N+1][N+1];
        for(int i=1; i<=N; i++) {
            d[i][0] = 1;
            d[i][i] = 1;
            for(int j=1; j<i; j++) d[i][j] = (d[i-1][j] + d[i-1][j-1])%10007;
        }
        System.out.println(d[N][K]);
    }
}