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
        for(int i=0; i<N; i++) A[i] = Integer.parseInt(br.readLine());
        Arrays.sort(A);

        int s = 0;
        int e = 0;
        int answer = 0x7fffffff;
        while(s <= e && s < N && e < N) {
            if(A[e]-A[s] < M) e++;
            else if(A[e]-A[s] >= M) {
                if(A[e]-A[s] < answer) answer = A[e]-A[s];
                s++;
            }
        }
        System.out.println(answer);
    }
}