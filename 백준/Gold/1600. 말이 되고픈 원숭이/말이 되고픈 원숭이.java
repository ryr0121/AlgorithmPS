import java.util.*;
import java.lang.*;
import java.io.*;


class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int K = sc.nextInt();
        int W = sc.nextInt();
        int H = sc.nextInt();

        int[][] arr = new int[H][W];
        for(int i=0; i<H; i++) {
            for(int j=0; j<W; j++) arr[i][j] = sc.nextInt();
        }

        int res = -1;
        
        boolean[][][] ch = new boolean[K+1][H][W];

        // 말의 이동방향
        int[] h_dx = {-2,-1,1,2,2,1,-1,-2};
        int[] h_dy = {1,2,2,1,-1,-2,-2,-1};

        // 원숭이의 이동방향
        int[] m_dx = {-1,0,1,0};
        int[] m_dy = {0,1,0,-1};

        Queue<int[]> q = new LinkedList<>();
        q.offer(new int[] {0,0,0,0}); // x,y,dist,horse
        ch[0][0][0] = true;

        while(!q.isEmpty()) {
            int[] cur = q.poll();
            int dist = cur[2];
            int horse = cur[3];

            if(cur[0] == H-1 && cur[1] == W-1) {
                res = dist;
                break;
            }

            for(int d=0; d<4; d++) {
                int nx = cur[0] + m_dx[d];
                int ny = cur[1] + m_dy[d];

                if(nx < 0 || nx >= H || ny < 0 || ny >= W) continue;
                if(ch[horse][nx][ny] || arr[nx][ny] == 1) continue;

                ch[horse][nx][ny] = true;
                q.offer(new int[] {nx,ny,dist+1, horse});
            }

            if(horse < K) {
                for(int d=0; d<8; d++) {
                    int nx = cur[0] + h_dx[d];
                    int ny = cur[1] + h_dy[d];

                    if(nx < 0 || nx >= H || ny < 0 || ny >= W) continue;
                    if(ch[horse+1][nx][ny] || arr[nx][ny] == 1) continue;
                    
                    ch[horse+1][nx][ny] = true;
                    q.offer(new int[] {nx,ny,dist+1, horse+1});
                }
            }
        }

        System.out.println(res);
    }
}