import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int[] nums = new int[20];
        for(int i=0; i<20; i++) nums[i] = i+1;

        for(int i=0; i<10; i++) {
            String s = br.readLine();
            StringTokenizer st = new StringTokenizer(s);
            int a = Integer.parseInt(st.nextToken());
            int b = Integer.parseInt(st.nextToken());
            int m = (b-a)/2 + 1;

            for(int j=0; j<m; j++) {
                int temp = nums[a-1+j];
                nums[a-1+j] = nums[b-1-j];
                nums[b-1-j] = temp;
            }
        }

        String answer = "";
        for(int i=0; i<20; i++) answer += nums[i] + " ";
        System.out.println(answer);
    }
}