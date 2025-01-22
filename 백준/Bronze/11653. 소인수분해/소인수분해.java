import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        
        int N = Integer.parseInt(br.readLine());
        int i = 2;
        while(N > 1) {
            while(N%i == 0) {
                N /= i;
                sb.append(i).append("\n");
            }
            i++;
        }
        System.out.println(sb);
    }
}