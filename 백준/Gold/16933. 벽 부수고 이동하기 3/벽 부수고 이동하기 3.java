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

        boolean[][][][] ch = new boolean[2][K+1][N][M];
        Queue<int[]> q = new LinkedList<>();

        q.offer(new int[] {0,0,0,1,0}); // [x, y, breakCnt, dist, isDay]
        ch[0][0][0][0] = true;

        while(!q.isEmpty()) {
            int[] cur = q.poll();
            int breakCnt = cur[2];
            int dist = cur[3];
            int isDay = cur[4];

            if(cur[0] == N-1 && cur[1] == M-1) {
                res = dist;
                break;
            }
            
            for(int d=0; d<4; d++) {
                int nx = cur[0] + dx[d];
                int ny = cur[1] + dy[d];

                if(nx < 0 || nx >= N || ny < 0 || ny >= M) continue;

                if(map[nx][ny] == 0) {
                    if(isDay == 0 && !ch[isDay+1][breakCnt][nx][ny]) {
                        ch[isDay+1][breakCnt][nx][ny] = true;
                        q.offer(new int[] {nx, ny, breakCnt, dist+1, isDay+1});
                        
                    } else if(isDay == 1 && !ch[isDay-1][breakCnt][nx][ny]) {
                        ch[isDay-1][breakCnt][nx][ny] = true;
                        q.offer(new int[] {nx, ny, breakCnt, dist+1, isDay-1});
                    }
                } else {
                    if(breakCnt < K && isDay == 0 && !ch[isDay+1][breakCnt+1][nx][ny]) {
                        ch[isDay+1][breakCnt+1][nx][ny] = true;
                        q.offer(new int[] {nx, ny, breakCnt+1, dist+1, isDay+1});
                        
                    } else if(breakCnt < K && isDay == 1 && !ch[isDay-1][breakCnt][cur[0]][cur[1]]) {
                        ch[isDay-1][breakCnt][cur[0]][cur[1]] = true;
                        q.offer(new int[] {cur[0], cur[1], breakCnt, dist+1, isDay-1});
                    }
                }
            }
            
        }
        
        System.out.println(res);
    }
}