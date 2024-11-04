import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int K = sc.nextInt();
        Stack<Integer> stack = new Stack<>();
        for(int i=0; i<K; i++) {
            int n = sc.nextInt();
            if(n == 0) stack.pop();
            else stack.push(n);
        }
        int sum = 0;
        while(!stack.isEmpty()) sum += stack.pop();
        System.out.println(sum);
    }
}