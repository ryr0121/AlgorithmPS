import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        int N = Integer.parseInt(st.nextToken());
        int S = Integer.parseInt(st.nextToken());
        int[] arr = new int[N];
        
        st = new StringTokenizer(br.readLine());
        for(int i=0; i<N; i++) arr[i] = Integer.parseInt(st.nextToken());

        int answer = N+1;
        int s = 0;
        int e = 0;
        int sum = arr[0];
        while(s <= e && s < N && e < N) {
            if(sum < S) {
                if(e == N-1) break;
                else sum += arr[++e];
            } else {
                if(e-s+1 < answer) answer = e-s+1;
                sum -= arr[s++];
            }
        }
        System.out.println((answer >= N+1) ? 0 : answer);
    }
}