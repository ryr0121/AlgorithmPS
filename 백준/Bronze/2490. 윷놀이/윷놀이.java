import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        for (int i=0; i<3; i++) {
            String s = br.readLine();
            StringTokenizer st = new StringTokenizer(s);
            
            int answer = 0;
            for(int j=0; j<4; j++) {
                if (Integer.parseInt(st.nextToken()) == 1) answer++;
            }

            if (answer == 3) System.out.println("A");
            else if (answer == 2) System.out.println("B");
            else if (answer == 1) System.out.println("C");
            else if (answer == 0) System.out.println("D");
            else if (answer == 4) System.out.println("E");
        }
    }
}