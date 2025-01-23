import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        
        int N = Integer.parseInt(br.readLine());
        int[] A = new int[N];

        StringTokenizer st = new StringTokenizer(br.readLine());
        for(int i=0; i<N; i++) A[i] = Integer.parseInt(st.nextToken());
        Arrays.sort(A);
        
        int M = Integer.parseInt(br.readLine());
        st = new StringTokenizer(br.readLine());
        while(M-- > 0) {
            int num = Integer.parseInt(st.nextToken());
            sb.append(isInArr(num, A)).append("\n");
        }
        System.out.println(sb);
    }

    public static int isInArr(int n, int[] arr) {
        int s = 0;
        int e = arr.length-1;
        int mid = (s+e)/2;

        while(s<=e) {
            if(arr[mid] < n) {
                s = mid+1;
                mid = (s+e)/2;
            } else if(arr[mid] > n) {
                e = mid-1;
                mid = (s+e)/2;
            } else return 1;
        }
        return 0;
    }
}