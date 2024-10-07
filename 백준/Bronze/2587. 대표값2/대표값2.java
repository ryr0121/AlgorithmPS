import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int[] nums = new int[5];
        int sum = 0;

        for (int i=0; i<5; i++) {
            int n = Integer.parseInt(br.readLine());
            nums[i] = n;
            sum += n;
        }
        Arrays.sort(nums);
        System.out.println(sum/5);
        System.out.println(nums[2]);
    }
}