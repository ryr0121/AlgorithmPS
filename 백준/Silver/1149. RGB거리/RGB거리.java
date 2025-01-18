import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());

        int[] red = new int[N+1];
        int[] green = new int[N+1];
        int[] blue = new int[N+1];
        
        int[][] D = new int[N+1][N+1];
        
        for(int i=1; i<=N; i++) {
            StringTokenizer st = new StringTokenizer(br.readLine());
            red[i] = Integer.parseInt(st.nextToken());
            green[i] = Integer.parseInt(st.nextToken());
            blue[i] = Integer.parseInt(st.nextToken());
        }

        D[1][1] = red[1];
        D[1][2] = green[1];
        D[1][3] = blue[1];

        for(int i=2; i<=N; i++) {
            D[i][1] = Math.min(D[i-1][2], D[i-1][3]) + red[i];
            D[i][2] = Math.min(D[i-1][1], D[i-1][3]) + green[i];
            D[i][3] = Math.min(D[i-1][1], D[i-1][2]) + blue[i];
        }

        int answer = Math.min(D[N][1], D[N][2]);
        answer = Math.min(answer, D[N][3]);
        System.out.println(answer);
    }
}