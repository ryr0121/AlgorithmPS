import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());
        StringTokenizer st = new StringTokenizer(br.readLine());
        int answer = 0;
        
        for(int i=0; i<N; i++) {
            int num = Integer.parseInt(st.nextToken());
            boolean ch = true;
            for(int j=2; j<num; j++) {
                if(num%j == 0) {
                    ch = false;
                    break;
                }
            }
            if(num > 1 && ch) answer++;
        }
        System.out.println(answer);
    }
}