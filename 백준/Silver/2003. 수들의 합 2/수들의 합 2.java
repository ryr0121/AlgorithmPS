import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        int N = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());
        int[] A = new int[N];
        
        st = new StringTokenizer(br.readLine());
        for(int i=0; i<N; i++) A[i] = Integer.parseInt(st.nextToken());

        int s = 0;
        int e = 0;
        int sum = A[0];
        int answer = 0;
        while(s <= e && s < N && e < N) {
            if(sum < M) {
                e++;
                if(e < N) sum += A[e];
            } else if(sum > M) {
                if(s == e) {
                    e++;
                    if(e < N) sum += A[e];
                } else sum -= A[s++];
            } else {
                e++;
                if(e < N) sum += A[e];
                answer++;
            }
        }
        System.out.println(answer);
    }
}