import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());

        for(int i=0; i<n; i++) {
            String s = br.readLine();
            StringTokenizer st = new StringTokenizer(s);
            
            char[] a = st.nextToken().toCharArray();
            char[] b = st.nextToken().toCharArray();

            if (a.length != b.length) System.out.println("Impossible");
            else {
                Arrays.sort(a);
                Arrays.sort(b);
                
                String answer = "Possible";
                for(int j=0; j<a.length; j++) {
                    if(a[j] != b[j]) answer = "Impossible";
                }
                System.out.println(answer);
            }
        }
        
    }
}