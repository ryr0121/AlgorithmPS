import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        while(true) {
            String input = br.readLine();
            if(input.equals(".")) break;

            Stack<Character> stack = new Stack<>();
            int len = input.length();
            boolean flag = true;
            
            for(int i=0; i<len; i++) {
                if(input.charAt(i) == '(' || input.charAt(i) == '[') {
                    stack.push(input.charAt(i));
                } else if(input.charAt(i) == ')') {
                    if(!stack.isEmpty() && stack.peek() == '(') stack.pop();
                    else {
                        flag = false;
                        break;
                    }
                } else if(input.charAt(i) == ']') {
                    if(!stack.isEmpty() && stack.peek() == '[') stack.pop();
                    else {
                        flag = false;
                        break;
                    }
                }
            }

            if(flag) {
                if(stack.isEmpty()) System.out.println("yes");
                else System.out.println("no");
            } else System.out.println("no");
        }
    }
}