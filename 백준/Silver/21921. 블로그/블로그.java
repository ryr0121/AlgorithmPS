import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        int n = Integer.parseInt(st.nextToken());
        int x = Integer.parseInt(st.nextToken());

        int[] arr = new int[n];
        st = new StringTokenizer(br.readLine());
        for(int i=0; i<n; i++) arr[i] = Integer.parseInt(st.nextToken());

        ArrayList<Integer> sums = new ArrayList<>();
        int max = 0;
        int sum = 0;

        int s = 0;
        int e = x-1;
        for(int j=0; j<x; j++) sum += arr[s+j];
        
        while(s <= e && s < n && e < n) {
            if(max < sum) max = sum;
            sums.add(sum);

            sum -= arr[s++];
            ++e;
            if(e < n) sum += arr[e];
            else break;
        }

        int cnt = 0;
        for(int v : sums) {
            if(v == max) cnt++;
        }

        System.out.println((max == 0) ? "SAD" : max+"\n"+cnt);
        
    }
}