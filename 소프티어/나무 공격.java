// 문제 링크 : https://softeer.ai/practice/9657

import java.io.*;
import java.util.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        int n = Integer.parseInt(st.nextToken());
        int m = Integer.parseInt(st.nextToken());

        int[][] arr = new int[n][m];
        int criminal_cnt = 0;
        for(int i=0; i<n; i++) {
            st = new StringTokenizer(br.readLine());
            for(int j=0; j<m; j++) {
                arr[i][j] = Integer.parseInt(st.nextToken());
                if(arr[i][j] == 1) criminal_cnt++;
            }
        }

        int attack_cnt = 2;
        while(attack_cnt-- > 0) {
            st = new StringTokenizer(br.readLine());
            int start = Integer.parseInt(st.nextToken());
            int end = Integer.parseInt(st.nextToken());

            for(int i=start-1; i<end; i++) {
                boolean ch = false; // 공격 수행 여부
                for(int j=0; j<m; j++) {
                    if(arr[i][j] == 1 && !ch) {
                        arr[i][j] = 0;
                        criminal_cnt--;
                        ch = true;
                    }
                }
            }
        }

        System.out.println(criminal_cnt);
    }
    
}
