import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine()); // 계단 수
        int[] s = new int[n+1]; // 계단
        int[][] d = new int[n+1][3]; // 획득 점수
        for(int i=1; i<=n; i++) s[i] = Integer.parseInt(br.readLine());
        if(n == 1) {
            System.out.println(s[1]);
            return;
        }
        
        d[1][1] = s[1];
        d[1][2] = 0;
        d[2][1] = s[2];
        d[2][2] = s[1] + s[2];

        for(int i=3; i<=n; i++) {
            d[i][1] = Math.max(d[i-2][1], d[i-2][2])+s[i];
            d[i][2] = d[i-1][1] + s[i];
        }
        
        System.out.println(Math.max(d[n][1], d[n][2]));
    }
}