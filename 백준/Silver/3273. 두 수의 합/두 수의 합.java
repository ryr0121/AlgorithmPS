import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());

        String s = br.readLine();
        StringTokenizer st = new StringTokenizer(s);
        int[] arr = new int[n];
        for(int i=0; i<n; i++) arr[i] = Integer.parseInt(st.nextToken());
            
        int x = Integer.parseInt(br.readLine());

        int[] nums = new int[2000000];
        int cnt = 0;
        for(int num : arr) {
            nums[num]++;
            if (num*2 == x || num == x) continue;
            if (x > num) cnt += (nums[x-num] > 0) ? 1 : 0;
        }
        System.out.println(cnt);
    }
}