import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static int[][] arr;
    
    static int minus_one = 0;
    static int zero = 0;
    static int one = 0;
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();

        arr = new int[N][N];
        for(int i=0; i<N; i++) {
            for(int j=0; j<N; j++) arr[i][j] = sc.nextInt();
        }

        recur(0,0,N);

        System.out.println(minus_one);
        System.out.println(zero);
        System.out.println(one);
    }

    public static void recur(int row, int col, int size) {
        if(isSame(row,col,size)) {
            if(arr[row][col] == -1) minus_one++;
            if(arr[row][col] == 0) zero++;
            if(arr[row][col] == 1) one++;

            return;
        }

        int newSize = size/3;

        // 윗줄 3칸
        recur(row, col, newSize);
        recur(row, col+newSize, newSize);
        recur(row, col+newSize*2, newSize);

        // 가운데줄 3칸
        recur(row+newSize, col, newSize);
        recur(row+newSize, col+newSize, newSize);
        recur(row+newSize, col+newSize*2, newSize);

        // 아랫줄 3칸
        recur(row+newSize*2, col, newSize);
        recur(row+newSize*2, col+newSize, newSize);
        recur(row+newSize*2, col+newSize*2, newSize);
    }

    public static boolean isSame(int row, int col, int size) {
        int stand = arr[row][col];
        for(int i=row; i<row+size; i++) {
            for(int j=col; j<col+size; j++) {
                if(arr[i][j] != stand) return false;
            }
        }
        return true;
    }
}