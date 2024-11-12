import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int M = sc.nextInt();
        int N = sc.nextInt();
        int H = sc.nextInt();

        int[][][] arr = new int[H][N][M];
        
        for(int i=0; i<H; i++) {
            for(int j=0; j<N; j++) {
                for(int k=0; k<M; k++) {
                    arr[i][j][k] = sc.nextInt();
                }
            }
        }
        
        Queue<int[]> q = new LinkedList<>();
        
        int[] dz = {-1,1,0,0,0,0};
        int[] dx = {0,0,-1,0,1,0,};
        int[] dy = {0,0,0,1,0,-1};

        // 1. 시작점 큐에 추가
        for(int i=0; i<H; i++) {
            for(int j=0; j<N; j++) {
                for(int k=0; k<M; k++) {
                    if(arr[i][j][k] == 1) q.offer(new int[] {i,j,k});
                }
            }
        }

        // 2. BFS 탐색
        while(!q.isEmpty()) {
            int[] cur = q.poll();
            for(int d=0; d<6; d++) {
                int nz = cur[0] + dz[d];
                int nx = cur[1] + dx[d];
                int ny = cur[2] + dy[d];
                if(nz > -1 && nz < H && nx > -1 && nx < N && ny > -1 && ny < M 
                   && arr[nz][nx][ny] == 0) {
                    q.offer(new int[] {nz, nx, ny});
                    arr[nz][nx][ny] = arr[cur[0]][cur[1]][cur[2]] + 1;
                   }
            }
        }

        // 3. arr 탐색하며 안 익은 것이 있는지, 다 익었다면 최소 일수 구하기
        int res = 0;
        for(int i=0; i<H; i++) {
            for(int j=0; j<N; j++) {
                for(int k=0; k<M; k++) {
                    if(arr[i][j][k] == 0) {
                        System.out.println(-1);
                        return;
                    }
                    if(arr[i][j][k] > res) res = arr[i][j][k];
                }
            }
        }
        System.out.println(res-1);
    }
}