import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static int N;
    static int[] arr;
    static int[] tmp;
    
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        
        N = Integer.parseInt(br.readLine());
        arr = new int[N];
        tmp = new int[N];
        for(int i=0; i<N; i++) arr[i] = Integer.parseInt(br.readLine());
    
        mergeSort(0,N);
        
        for(int i=0; i<N; i++) sb.append(arr[i]).append("\n");
        System.out.println(sb);
    }

    // 인덱스 start부터 end까지의 배열 범위를 두 개로 나누어 정렬 후 합침
    public static void mergeSort(int start, int end) {
        if(start == end-1) return;
        int mid = (start+end)/2;
        mergeSort(start,mid);
        mergeSort(mid,end);
        merge(start,end);
        for(int i=start; i<end; i++) arr[i] = tmp[i];
    }

    // 인덱스 start부터 end까지 배열을 합치며 동시에 정렬
    public static void merge(int start, int end) {
        int mid = (start+end)/2;
        int lIdx = start;
        int rIdx = mid;
        for(int i=start; i<end; i++) {
            if(rIdx == end) tmp[i] = arr[lIdx++];
            else if(lIdx == mid) tmp[i] = arr[rIdx++];
            else if(arr[lIdx] <= arr[rIdx]) tmp[i] = arr[lIdx++];
            else tmp[i] = arr[rIdx++];
        }
    }
}