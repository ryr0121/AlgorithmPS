import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        int N = Integer.parseInt(st.nextToken());
        int K = Integer.parseInt(st.nextToken());

        int head = 1;
        int tail = 1;
        for(int i=K; i>0; i--) {
            head *= N--;
            tail *= i;
        }
        System.out.println(head/tail);
    }
}