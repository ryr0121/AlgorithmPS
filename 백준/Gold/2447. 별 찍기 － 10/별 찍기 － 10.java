import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static char[][] arr;
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        arr = new char[N][N];

        printStar(0,0,N,false);
        
        StringBuilder sb = new StringBuilder();
        for(int i=0; i<N; i++) {
            for(int j=0; j<N; j++) sb.append(arr[i][j]);
            sb.append("\n");
        }
        System.out.println(sb);
    }

    public static void printStar(int x, int y, int size, boolean isBlank) {
        if(isBlank) {
            for(int i=x; i<x+size; i++) {
                for(int j=y; j<y+size; j++) arr[i][j] = ' ';
            }
            return;
        }

        if(size == 1) {
            arr[x][y] = '*';
            return;
        }

        int newSize = size/3;
        int cnt = 0;

        for(int i=x; i<x+size; i+=newSize) {
            for(int j=y; j<y+size; j+=newSize) {
                cnt++;
                if(cnt == 5) printStar(i,j,newSize,true); 
                else printStar(i,j,newSize,false);
            }
        }
    }
}