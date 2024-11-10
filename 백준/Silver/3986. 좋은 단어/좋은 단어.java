import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());
        int res = 0;
        
        while(N-- > 0) {
            Stack<Character> stack = new Stack<>();
            String word = br.readLine();
            
            for(int i=0; i<word.length(); i++) {
                if(!stack.isEmpty() && stack.peek() == word.charAt(i)) stack.pop();
                else stack.push(word.charAt(i));
            }
            if(stack.isEmpty()) res++;
        }
        System.out.println(res);
    }
}