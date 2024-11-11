import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int M = sc.nextInt();
        int N = sc.nextInt();
        
        int[][] arr = new int[N][M];
        Queue<int[]> q = new LinkedList<>();
        int res = 0;

        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};
        
        for(int i=0; i<N; i++) {
            for(int j=0; j<M; j++) arr[i][j] = sc.nextInt();
        }

        // 1. arr를 돌며 모든 시작점을 큐에 넣기
        for(int i=0; i<N; i++) {
            for(int j=0; j<M; j++) {
                if(arr[i][j] == 1) q.offer(new int[] {i,j});
            }
        }

        // 2. BFS 탐색 - 각 칸에 값을 익을때까지 걸리는 날의 값으로 바꿔치기
        while(!q.isEmpty()) {
            int[] cur = q.poll();
            for(int d=0; d<4; d++) {
                int nx = cur[0] + dx[d];
                int ny = cur[1] + dy[d];
                if(nx > -1 && nx < N && ny > -1 && ny < M && arr[nx][ny] == 0) {
                    q.offer(new int[] {nx,ny});
                    arr[nx][ny] = arr[cur[0]][cur[1]] + 1;
                }
            }
        }
        
        // 3. arr을 돌며 최소일수 구하기
        boolean flag = false; // 0이 존재하는지 여부
        for(int i=0; i<N; i++) {
            for(int j=0; j<M; j++) {
                if(arr[i][j] == 0) {
                    flag = true;
                    break;
                }
                if(arr[i][j] > res) res = arr[i][j];
            }
        }
        System.out.println(flag ? -1 : res-1);
        // res가 아닌 res-1인 이유 : 처음부터 토마토가 익어있는 곳의 값은 1이었지만, 익을때까지 걸리는 시간은 0이므로
    }
}