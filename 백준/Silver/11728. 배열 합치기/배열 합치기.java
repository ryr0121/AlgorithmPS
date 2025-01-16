import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();

        String s = br.readLine();
        StringTokenizer st = new StringTokenizer(s);

        int[] nm = new int[2];
        
        nm[0] = Integer.parseInt(st.nextToken());
        nm[1] = Integer.parseInt(st.nextToken());

        int[] A = new int[nm[0]];
        int[] B = new int[nm[1]];
        
        s = br.readLine();
        st = new StringTokenizer(s);
        for(int i=0; i<nm[0]; i++) A[i] = Integer.parseInt(st.nextToken());

        s = br.readLine();
        st = new StringTokenizer(s);
        for(int i=0; i<nm[1]; i++) B[i] = Integer.parseInt(st.nextToken());

        int aIdx = 0;
        int bIdx = 0;
        
        while(aIdx < A.length && bIdx < B.length) {
            if(A[aIdx] <= B[bIdx]) sb.append(A[aIdx++]).append(" ");
            else if(A[aIdx] > B[bIdx]) sb.append(B[bIdx++]).append(" ");
        }

        if(aIdx == A.length) {
            for(int i=bIdx; i<B.length; i++) sb.append(B[i]).append(" ");
            
        } else if(bIdx == B.length) {
            for(int i=aIdx; i<A.length; i++) sb.append(A[i]).append(" ");
        }

        System.out.println(sb);
    }
}