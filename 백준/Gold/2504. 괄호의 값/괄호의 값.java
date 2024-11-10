import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String input = sc.next();
        int len = input.length();
        Stack<Character> stack = new Stack<>();

        int res = 0;
        int tmp = 1;
        boolean flag = true;
        
        for(int i=0; i<len; i++) {
            if(input.charAt(i) == '(') {
                tmp *= 2;
                stack.push(input.charAt(i));
                
            } else if(input.charAt(i) == '[') {
                tmp *= 3;
                stack.push(input.charAt(i));
                
            } else if(input.charAt(i) == ')') {
                if(stack.isEmpty() || stack.peek() != '(') {
                    flag = false;
                    break;
                }
                if(input.charAt(i-1) == '(') res += tmp;
                stack.pop();  
                tmp /= 2;
                
            } else if(input.charAt(i) == ']') {
                if(stack.isEmpty() || stack.peek() != '[') {
                    flag = false;
                    break;
                }
                if(input.charAt(i-1) == '[') res += tmp;
                stack.pop();
                tmp /= 3;
            }
        }
        System.out.println((flag && stack.isEmpty()) ? res : 0);
    }
}