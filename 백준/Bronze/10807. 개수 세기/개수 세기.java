import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
        
        int[] arr = new int[n];
        String s = br.readLine();
        StringTokenizer st = new StringTokenizer(s);
        for(int i=0; i<n; i++) arr[i] = Integer.parseInt(st.nextToken());
        
        int v = Integer.parseInt(br.readLine());

        int cnt = 0;
        for(int i=0; i<n; i++) cnt += (arr[i]==v) ? 1 : 0;
        System.out.println(cnt);
    }
}