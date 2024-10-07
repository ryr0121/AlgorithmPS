import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String s = br.readLine();
        StringTokenizer st = new StringTokenizer(s);
        
        int a = Integer.parseInt(st.nextToken());
        int b = Integer.parseInt(st.nextToken());

        if (a == b) {
            System.out.println(0);
        } else {
            if (a > b) {
                int temp = a;
                a = b;
                b = temp;
            }
            int cnt = 0;
            String answer = "";
            for (int i=a+1; i<b; i++) {
                cnt++;
                answer += i + " ";
            }
            System.out.println(cnt);
            System.out.println(answer);
        }
    }
}