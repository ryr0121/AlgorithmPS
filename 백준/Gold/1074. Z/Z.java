import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static int count = 0;
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int r = sc.nextInt();
        int c = sc.nextInt();

        int size = (int) Math.pow(2,N);
        getResult(size, r, c);
        System.out.println(count);
    }

    public static void getResult(int size, int r, int c) {
        if(size == 1) return;

        // 이동 방향 : 2 -> 1 -> 3 -> 4
        // 2사분면 위치
		if(r < size/2 && c < size/2) {
			getResult(size/2, r, c);
        }
        // 1사분면 위치
        else if(r < size/2 && c >= size/2) {
			count += size * size / 4;
			getResult(size/2, r, c-size/2);
		}
        // 3사분면 위치
        else if(r >= size/2 && c < size/2) {
			count += (size * size / 4) * 2;
			getResult(size/2, r-size/2, c);
		}
        // 4사분면 위치
        else {
			count += (size * size / 4) * 3;
			getResult(size/2, r-size/2, c-size/2);
		}
    }
}