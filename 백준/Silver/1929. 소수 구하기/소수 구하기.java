import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        int M = Integer.parseInt(st.nextToken());
        int N = Integer.parseInt(st.nextToken());

        boolean[] ch = new boolean[1000001];
        ch[1] = true; // 1은 소수가 아님

        for(int i=2; i<=N; i++) {
            if(ch[i]) continue;
            for(int j=2*i; j<=N; j+=i) ch[j] = true;
        }

        for(int i=M; i<=N; i++) {
            if(!ch[i]) System.out.println(i);
        }
    }
}