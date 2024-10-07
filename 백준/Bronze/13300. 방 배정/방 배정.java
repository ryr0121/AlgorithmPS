import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String s = br.readLine();
        StringTokenizer st = new StringTokenizer(s);
        int n = Integer.parseInt(st.nextToken());
        int k = Integer.parseInt(st.nextToken());

        int[][] info = new int[6][2];
        for(int i=0; i<n; i++) {
            s = br.readLine();
            st = new StringTokenizer(s);
            int gender = Integer.parseInt(st.nextToken());
            int grade = Integer.parseInt(st.nextToken());
            info[grade-1][gender]++;
        }

        int cnt = 0;
        for(int i=0; i<6; i++) {
            cnt += info[i][0]/k;
            if (info[i][0]%k > 0) cnt++;

            cnt += info[i][1]/k;
            if (info[i][1]%k > 0) cnt++;
        }
        System.out.println(cnt);
    }
}