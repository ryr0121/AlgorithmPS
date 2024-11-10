import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String input = sc.next();
        Stack<Character> stack = new Stack<>();
        int len = input.length();
        int res = 0;
        
        for(int i=0; i<len; i++) {
            if(input.charAt(i) == '(') stack.push('(');
            else {
                stack.pop();
                if(input.charAt(i-1) == '(') res += stack.size();
                else res++;
            }
        }
        System.out.println(res);
    }
}