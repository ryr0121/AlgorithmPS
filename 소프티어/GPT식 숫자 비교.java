// 문제 링크 : https://softeer.ai/practice/11001

import java.io.*;
import java.util.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        int N = Integer.parseInt(br.readLine());
        String[] arr = new String[N];
        for(int i=0; i<N; i++) arr[i] = br.readLine();
        
        Arrays.sort(arr, new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {

                String[] o1_splited = new String[2];
                String[] o2_splited = new String[2];

                // String split을 할 때, 구분자를 "."으로 둘 경우, "\\."으로 전해야 함
                // .은 모든 문자를 의미하므로, 결과적으로 구분되어진 문자가 0개가 됨
                
                if(o1.contains(".")) o1_splited = o1.split("\\."); 
                else {
                    o1_splited[0] = o1;
                    o1_splited[1] = "-1"; // 3은 3.0보다 작으므로
                }

                if(o2.contains(".")) o2_splited = o2.split("\\."); 
                else {
                    o2_splited[0] = o2;
                    o2_splited[1] = "-1"; // 3은 3.0보다 작으므로
                }
                
                int o1_head = Integer.parseInt(o1_splited[0]);
                int o1_tail = Integer.parseInt(o1_splited[1]);
                
                int o2_head = Integer.parseInt(o2_splited[0]);
                int o2_tail = Integer.parseInt(o2_splited[1]);
                
                if(o1_head != o2_head) return o1_head - o2_head;
                else return o1_tail - o2_tail;
            }
        });

        for(String str : arr) System.out.println(str);
    }
    
}
