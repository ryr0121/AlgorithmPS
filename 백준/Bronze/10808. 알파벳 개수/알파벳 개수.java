import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        char[] word = br.readLine().toCharArray();
        int[] a_cnt = new int[26];

        for(int i=0; i<word.length; i++) a_cnt[(int)word[i] - 97] += 1;

        String answer = "";
        for(int i=0; i<a_cnt.length; i++) answer += a_cnt[i] + " ";
        System.out.println(answer);
    }
}