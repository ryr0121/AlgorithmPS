import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];
        for(int i=0; i<n; i++) arr[i] = sc.nextInt();

        Stack<Integer> stack = new Stack<>();
        StringBuilder sb = new StringBuilder();
        int target = 0;
        for(int i=1; i<=n; i++) {
            sb.append("+\n");
            stack.push(i);
            while(!stack.isEmpty() && stack.peek() == arr[target]) {
                sb.append("-\n");
                stack.pop();
                target++;
            }
        }
        if(!stack.isEmpty()) System.out.println("NO");
        else System.out.println(sb);
    }
}