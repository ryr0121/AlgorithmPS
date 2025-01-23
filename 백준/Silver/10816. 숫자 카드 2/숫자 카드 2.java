import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        
        int N = Integer.parseInt(br.readLine());
        int[] cards = new int[N];
        StringTokenizer st = new StringTokenizer(br.readLine());
        for(int i=0; i<N; i++) cards[i] = Integer.parseInt(st.nextToken());
        Arrays.sort(cards);
        
        int M = Integer.parseInt(br.readLine());
        st = new StringTokenizer(br.readLine());
        while(M-- > 0) {
            int num = Integer.parseInt(st.nextToken());
            sb.append(getUpperIdx(num,cards)-getLowerIdx(num,cards)).append(" ");
        }
        System.out.println(sb);
    }

    public static int getUpperIdx(int n, int[] arr) {
        int s = 0;
        int e = arr.length;
        while(s < e) {
            int mid = (s+e)/2;
            if(arr[mid] > n) e = mid;
            else s = mid+1;
        }
        return s;
    }

    public static int getLowerIdx(int n, int[] arr) {
        int s = 0;
        int e = arr.length;
        while(s < e) {
            int mid = (s+e)/2;
            if(arr[mid] >= n) e = mid;
            else s = mid+1;
        }
        return s;
    }
}