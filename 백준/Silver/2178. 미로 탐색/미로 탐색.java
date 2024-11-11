import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int M = sc.nextInt();
        
        int[][] arr = new int[N][M];
        int[][] dist = new int[N][M]; // 각 칸에 가기위한 거리 측정용
        Queue<int[]> q = new LinkedList<>();

        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};
        
        for(int i=0; i<N; i++) {
            int j = 0;
            char[] input = sc.next().toCharArray();
            for(char c : input) {
                arr[i][j] = Character.getNumericValue(c);
                j++;
            }
        }

        // BFS 탐색 시작
        dist[0][0] = 1;
        q.offer(new int[] {0,0});
        while(!q.isEmpty()) {
            int[] cur = q.poll();
            for(int d=0; d<4; d++) {
                int nx = cur[0] + dx[d];
                int ny = cur[1] + dy[d];
                if(nx > -1 && nx < N && ny > -1 && ny < M && dist[nx][ny] == 0 && arr[nx][ny] == 1) {
                    q.offer(new int[] {nx,ny});
                    dist[nx][ny] = dist[cur[0]][cur[1]] + 1;
                }
            }
        }
        System.out.println(dist[N-1][M-1]);
    }
}