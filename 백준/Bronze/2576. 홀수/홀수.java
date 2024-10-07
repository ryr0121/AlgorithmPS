import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int odd_sum = 0;
        int min_odd = 1000;
        for (int i=0; i<7; i++) {
            int n = Integer.parseInt(br.readLine());
            if (n%2 == 1) {
                odd_sum += n;
                if (min_odd > n) min_odd = n;
            }
        }

        if (odd_sum > 0) {
            System.out.println(odd_sum);
            System.out.println(min_odd);
        } else {
            System.out.println(-1);
        }
    }
}