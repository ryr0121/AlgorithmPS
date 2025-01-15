import java.util.*;
import java.lang.*;
import java.io.*;

class Main {

    static int[] dx = {-1,0,1,0};
    static int[] dy = {0,-1,0,1};
    static int n,m;
    static int[][] arr1;
    static int[][] arr2;
    static ArrayList<int[]> cctv;
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        n = sc.nextInt();
        m = sc.nextInt();
        arr1 = new int[n][m];
        arr2 = new int[n][m];
        cctv = new ArrayList<>();

        int answer = 0;
        
        for(int i=0; i<n; i++) {
            for(int j=0; j<m; j++) {
                arr1[i][j] = sc.nextInt();
                if(arr1[i][j] != 0 && arr1[i][j] != 6) cctv.add(new int[] {i,j});
                if(arr1[i][j] == 0) answer++;
            }
        }       

        for(int tmp=0; tmp<(1<<(2*cctv.size())); tmp++) {
            for(int i=0; i<n; i++) {
                for(int j=0; j<m; j++) arr2[i][j] = arr1[i][j];
            }
            int brute = tmp;
            for(int i=0; i<cctv.size(); i++) {
                int dir = brute % 4;
                brute /= 4;
                int x = cctv.get(i)[0];
                int y = cctv.get(i)[1];
                if(arr1[x][y] == 1) upd(x,y,dir);
                else if(arr1[x][y] == 2) {
                    upd(x,y,dir);
                    upd(x,y,dir+2);
                }
                else if(arr1[x][y] == 3) {
                    upd(x,y,dir);
                    upd(x,y,dir+1);
                }
                else if(arr1[x][y] == 4) {
                    upd(x,y,dir);
                    upd(x,y,dir+1);
                    upd(x,y,dir+2);
                }
                else {
                    upd(x,y,dir);
                    upd(x,y,dir+1);
                    upd(x,y,dir+2);
                    upd(x,y,dir+3);
                }
            }
            int val = 0;
            for(int i=0; i<n; i++) {
                for(int j=0; j<m; j++) val += (arr2[i][j] == 0) ? 1 : 0;
            }
            if(answer > val) answer = val;
        }
        
        System.out.println(answer);
    }

    static boolean isInBound(int x, int y) {
        return (x > -1 && x < n && y > -1 && y < m);
    }

    static void upd(int x, int y, int dir) {
        dir %= 4;
        while(true) {
            x += dx[dir];
            y += dy[dir];
            if(!isInBound(x,y) || arr2[x][y] == 6) return;
            if(arr2[x][y] != 0) continue;
            arr2[x][y] = 7;
        }
    }
}