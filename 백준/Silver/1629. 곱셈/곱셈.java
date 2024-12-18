import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long A = sc.nextInt();
        long B = sc.nextInt();
        long C = sc.nextInt();

        System.out.println(pow(A,B,C));
    }

    public static long pow(long a, long b, long c) {
        if(b == 1) return a%c;

        long tmp = pow(a, b/2, c);
        if(b%2 == 1) return (tmp*tmp%c)*a%c;
        else return tmp*tmp%c;
    } 
}