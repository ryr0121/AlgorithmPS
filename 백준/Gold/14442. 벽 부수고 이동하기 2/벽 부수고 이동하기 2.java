import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int M = sc.nextInt();
        int K = sc.nextInt();

        int[][] map = new int[N][M];
        for(int i=0; i<N; i++) {
            int j = 0;
            char[] input = sc.next().toCharArray();
            for(char c : input) map[i][j++] = Character.getNumericValue(c);
        }

        int res = -1;
        
        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};

        boolean[][][] ch = new boolean[K+1][N][M];
        Queue<int[]> q = new LinkedList<>();

        q.offer(new int[] {0,0,0,1}); // [x, y, breakCnt, dist]
        ch[0][0][0] = true;

        while(!q.isEmpty()) {
            int[] cur = q.poll();
            int breakCnt = cur[2];
            int dist = cur[3];

            if(cur[0] == N-1 && cur[1] == M-1) {
                res = dist;
                break;
            }

            for(int d=0; d<4; d++) {
                int nx = cur[0] + dx[d];
                int ny = cur[1] + dy[d];

                if(nx < 0 || nx >= N || ny < 0 || ny >= M) continue;
                if(ch[breakCnt][nx][ny]) continue;

                if(map[nx][ny] == 0) {
                    ch[breakCnt][nx][ny] = true;
                    q.offer(new int[] {nx, ny, breakCnt, dist+1});
                }

                if(map[nx][ny] == 1 && breakCnt < K && !ch[breakCnt+1][nx][ny]) {
                    ch[breakCnt+1][nx][ny] = true;
                    q.offer(new int[] {nx, ny, breakCnt+1, dist+1});
                }
            }
        }
        
        System.out.println(res);
    }
}