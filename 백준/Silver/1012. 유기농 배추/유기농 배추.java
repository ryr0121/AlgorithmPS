import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int T = sc.nextInt();
        while(T-- > 0) {
            int M = sc.nextInt();
            int N = sc.nextInt();
            int K = sc.nextInt();

            int[][] arr = new int[N][M];
            boolean[][] ch = new boolean[N][M];
            for(int i=0; i<K; i++) {
                int x = sc.nextInt();
                int y = sc.nextInt();
                arr[y][x] = 1;
            }

            Queue<int[]> q = new LinkedList<>();
            int res = 0;

            int[] dx = {-1,0,1,0};
            int[] dy = {0,1,0,-1};
            
            for(int i=0; i<N; i++) {
                for(int j=0; j<M; j++) {
                    if(arr[i][j] == 1 && !ch[i][j]) {
                        res++;
                        q.offer(new int[] {i,j});
                        ch[i][j] = true;
                        while(!q.isEmpty()) {
                            int[] cur = q.poll();
                            for(int d=0; d<4; d++) {
                                int nx = cur[0] + dx[d];
                                int ny = cur[1] + dy[d];
                                if(nx > -1 && nx < N && ny > -1 && ny < M && !ch[nx][ny] && arr[nx][ny] == 1) {
                                    q.offer(new int[] {nx,ny});
                                    ch[nx][ny] = true;
                                }
                            }
                        }
                    }
                }
            }
            System.out.println(res);
        }
    }
}