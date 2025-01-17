import java.util.*;
import java.lang.*;
import java.io.*;

class Main {    
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        
        int N = Integer.parseInt(br.readLine());
        
        int[] arr = new int[N];
        int[] minus_freq = new int[10000001]; // 음수
        int[] plus_freq = new int[10000001]; // 0과 양수
        
        for(int i=0; i<N; i++) {
            int num = Integer.parseInt(br.readLine());
            if(num < 0) minus_freq[num*(-1)]++;
            else plus_freq[num]++;
            
        }

        for(int i=10000000; i>0; i--) {
            if(minus_freq[i] > 0) {
                for(int j=0; j<minus_freq[i]; j++) sb.append(i*(-1)).append("\n");
            }
        }
        for(int i=0; i<10000001; i++) {
            if(plus_freq[i] > 0) {
                for(int j=0; j<plus_freq[i]; j++) sb.append(i).append("\n");
            }
        }
        System.out.println(sb);
    }
}