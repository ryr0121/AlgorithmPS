import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        char[] input = br.readLine().toCharArray();
        int len = input.length;
        int cur = 0;
        int idx = 0;
        
        outer: while(true) {
            cur++;
            char[] cur_list = Integer.toString(cur).toCharArray();
            for(char c : cur_list) {
                if(c == input[idx]) {
                    idx++;
                    if(idx >= len) {
                        System.out.println(cur);
                        break outer;
                    }
                }
            }
        }
    }
}