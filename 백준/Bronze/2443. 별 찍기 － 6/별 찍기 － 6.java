import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());

        for(int i=n-1; i>-1; i--) {
            String answer = "";
            for(int j=1; j<(n-i); j++) answer += " ";
            for(int k=0; k<(2*i+1); k++) answer += "*";
            System.out.println(answer);
        }
    }
}