import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while(true) {
            int L = sc.nextInt();
            int R = sc.nextInt();
            int C = sc.nextInt();

            if(L == 0 && R == 0 && C == 0) break;

            char[][][] arr = new char[L][R][C];
            for(int i=0; i<L; i++) {
                for(int j=0; j<R; j++) {
                    int k=0;
                    char[] input = sc.next().toCharArray();
                    for(char c : input) arr[i][j][k++] = c;
                }
            }
            
            int res = escape(L, R, C, arr);
            System.out.println(res == -1 ? "Trapped!" : "Escaped in " + res + " minute(s).");
        }
    }

    public static int escape(int L, int R, int C, char[][][] arr) {
        int[][][] dist = new int[L][R][C];
        Queue<int[]> q = new LinkedList<>();
        int[] exit = new int[3];
        
        // 1. 상범의 시작 위치 큐에 추가, 출구 위치 파악
        for(int i=0; i<L; i++) {
            for(int j=0; j<R; j++) {
                Arrays.fill(dist[i][j], -1);
                for(int k=0; k<C; k++) {
                    if(arr[i][j][k] == 'S') {
                        dist[i][j][k] = 0;
                        q.offer(new int[] {i,j,k});
                    }
                    if(arr[i][j][k] == 'E') exit = new int[] {i,j,k};
                }
            }
        }

        // 2. 탈출을 위한 탐색
        int[] dz = {-1,1,0,0,0,0};
        int[] dx = {0,0,1,0,-1,0};
        int[] dy = {0,0,0,1,0,-1};
        
        while(!q.isEmpty()) {
            int[] cur = q.poll();
            for(int d=0; d<6; d++) {
                int nz = cur[0] + dz[d];
                int nx = cur[1] + dx[d];
                int ny = cur[2] + dy[d];

                if(nz == exit[0] && nx == exit[1] && ny == exit[2]) {
                    return dist[cur[0]][cur[1]][cur[2]]+1;
                }

                if(nz < 0 || nz >= L || nx < 0 || nx >= R || ny < 0 || ny >= C) continue;
                if(dist[nz][nx][ny] != -1 || arr[nz][nx][ny] == '#') continue;

                q.offer(new int[] {nz,nx,ny});
                dist[nz][nx][ny] = dist[cur[0]][cur[1]][cur[2]] + 1;
            }
        }
        return -1;
    }
}