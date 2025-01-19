import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;
        
        int N = Integer.parseInt(br.readLine());
        int[] w = new int[N];
        for(int i=0; i<N; i++) w[i] = Integer.parseInt(br.readLine());
        Arrays.sort(w);

        int answer = 0;
        for(int i=1; i<=N; i++) answer = Math.max(answer, w[N-i]*i);
        System.out.println(answer);
    }
}