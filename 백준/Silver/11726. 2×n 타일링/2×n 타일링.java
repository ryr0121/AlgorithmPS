import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
        int[] D = new int[100001];
        
        D[1] = 1; // 2 * 1 크기의 직사각형을 채우기 위해, 2*1 크기 타일 1개 필요
        D[2] = 2; // 2*1 두 개, 1*2 두 개
        
        for(int i=3; i<=n; i++) D[i] = (D[i-1] + D[i-2])%10007;
        System.out.println(D[n]);
    }
}