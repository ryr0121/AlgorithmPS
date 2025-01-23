import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        
        int N = Integer.parseInt(br.readLine());
        int[] arr = new int[N];
        int[] s_arr = new int[N];
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        for(int i=0; i<N; i++) {
            arr[i] = Integer.parseInt(st.nextToken());
            s_arr[i] = arr[i];
        }
        Arrays.sort(s_arr);

        // 중복 제거
        ArrayList<Integer> list = new ArrayList<>();
        list.add(s_arr[0]);
        for(int i=1; i<N; i++) {
            if(list.get(list.size()-1) == s_arr[i]) continue;
            list.add(s_arr[i]);
        }
        s_arr = new int[list.size()];
        int idx = 0;
        for(int n : list) s_arr[idx++] = n;

        for(int i=0; i<N; i++) sb.append(binarySearch(arr[i], s_arr)).append(" ");
        System.out.println(sb);
    }

    public static int binarySearch(int n, int[] arr) {
        int s = 0;
        int e = arr.length-1;
        while(s <= e) {
            int mid = (s+e)/2;
            if(arr[mid] < n) s = mid+1;
            else if(arr[mid] > n) e = mid-1;
            else return mid;
        }
        return -1;
    }
}