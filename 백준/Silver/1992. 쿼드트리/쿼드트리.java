import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static StringBuilder sb;
    static int[][] arr;
    
    public static void main(String[] args) {
        sb = new StringBuilder();
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        
        arr = new int[N][N];
        for(int i=0; i<N; i++) {
            char[] input = sc.next().toCharArray();
            int j=0;
            for(char c : input) arr[i][j++] = Character.getNumericValue(c);
        }

        recur(0,0,N);
        System.out.println(sb);
    }

    public static void recur(int x, int y, int size) {
        if(isPossible(x,y,size)) {
            sb.append(arr[x][y]);
            return;
        }

        int newSize = size/2;

        sb.append("(");
        recur(x, y, newSize);
        recur(x, y+newSize, newSize);
        recur(x+newSize, y, newSize);
        recur(x+newSize, y+newSize, newSize);
        sb.append(")");
    }

    public static boolean isPossible(int x, int y, int size) {
        int stand = arr[x][y];
        for(int i=x; i<x+size; i++) {
            for(int j=y; j<y+size; j++) {
                if(arr[i][j] != stand) return false;
            }
        }
        return true;
    }
}