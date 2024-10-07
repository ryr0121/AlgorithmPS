import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String s = br.readLine();
        StringTokenizer st = new StringTokenizer(s);
        int[] nums = new int[3];
        for(int i=0; i<3; i++) nums[i] = Integer.parseInt(st.nextToken());

        Arrays.sort(nums);
        if (nums[0] == nums[1] && nums[1] == nums[2]) System.out.println(10000+nums[0]*1000);
        else if (nums[0] == nums[1]) System.out.println(1000+nums[0]*100);
        else if (nums[0] == nums[2]) System.out.println(1000+nums[0]*100);
        else if (nums[1] == nums[2]) System.out.println(1000+nums[1]*100);
        else  System.out.println(nums[2]*100);
    }
}