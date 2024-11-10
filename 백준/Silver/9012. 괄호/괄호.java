import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());
        while(N-- > 0) {
            String input = br.readLine();
            Stack<Character> stack = new Stack<>();
            boolean res = true;
            for(int i=0; i<input.length(); i++) {
                if(input.charAt(i) == '(') stack.push(input.charAt(i));
                else {
                    if(!stack.isEmpty() && stack.peek() == '(') stack.pop();
                    else {
                        res = false;
                        break;
                    }
                }
            }
            System.out.println(stack.isEmpty() && res ? "YES" : "NO");
        }
    }
}