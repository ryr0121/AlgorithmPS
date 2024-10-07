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
        String answer = "";
        for (int i=0; i<3; i++) answer += nums[i] + " ";
        System.out.println(answer);
    }
}