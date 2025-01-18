import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());

        int[] d = new int[N+1]; // 테이블 정의
        int[] pre = new int[N+1]; // 경로 복원용 테이블
        d[1] = 0; // 초기값 정의
        
        for(int i=2; i<=N; i++) {
            // 점화식 정의 및 사용
            d[i] = d[i-1] + 1;
            pre[i] = i-1;
            
            if(i%2 == 0 && d[i] > d[i/2]+1) {
                d[i] = d[i/2]+1;
                pre[i] = i/2;
            }
            if(i%3 == 0 && d[i] > d[i/3]+1) {
                d[i] = d[i/3]+1;
                pre[i] = i/3;
            }
        }
        System.out.println(d[N]);

        int cur = N;
        String pre_str = "";
        while(true) {
            pre_str += cur + " ";
            if(cur == 1) break;
            cur = pre[cur];
        }
        System.out.println(pre_str);
    }
}