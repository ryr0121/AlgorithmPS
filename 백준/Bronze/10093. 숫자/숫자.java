import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String s = br.readLine();
        StringTokenizer st = new StringTokenizer(s);
        
        long a = Long.parseLong(st.nextToken());
        long b = Long.parseLong(st.nextToken());

        StringBuilder sb = new StringBuilder();
        if (a == b) {
            System.out.println(0);
        } else {
            if (a > b) {
                long temp = a;
                a = b;
                b = temp;
            }
            int cnt = 0;
            String answer = "";
            for (long i=a+1; i<b; i++) {
                cnt++;
                sb.append(i).append(" ");
            }
            System.out.println(cnt);
            System.out.println(sb);
        }
    }
}