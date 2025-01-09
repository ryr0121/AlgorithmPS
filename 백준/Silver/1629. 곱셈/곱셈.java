import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static long value = 1;
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long A = sc.nextLong();
        long B = sc.nextLong();
        long C = sc.nextLong();

        System.out.print(getResult(A,B,C));
    }

    static long getResult(long a, long b, long c) {
        if(b == 1) return a % c;   // base condition

        long res = getResult(a, b/2, c);
        res = res * res % c;
        
        if(b%2 == 0) return res;
        else return res * a % c;
    }
}