import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        
        int N = Integer.parseInt(br.readLine());
        
        List<Long> list = new ArrayList<>();
        for(int i=0; i<N; i++) list.add(Long.parseLong(br.readLine()));
        
        Collections.sort(list);
        
        Long answer = list.get(0);
        int max_cnt = 0;
        int cnt = 1;
        Long cur = list.get(0);
        
        for(int i=1; i<list.size(); i++) {
            if(cur.equals(list.get(i))) cnt++;
            else {
                if(max_cnt < cnt) {
                    max_cnt = cnt;
                    answer = cur;
                }
                cur = list.get(i);
                cnt = 1;
            }
        }
        if(max_cnt < cnt) answer = cur;
        
        System.out.println(answer);
    }
}