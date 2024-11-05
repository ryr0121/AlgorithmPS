import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        long res = 0;
        Stack<Integer> stack = new Stack<>();
        
        for(int i=0; i<N; i++) {
            int h = sc.nextInt();
            while(!stack.isEmpty() && stack.peek() <= h) stack.pop();
            stack.push(h);
            res += stack.size()-1;
        }

        System.out.println(res);
    }
}