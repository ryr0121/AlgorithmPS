import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int R = sc.nextInt();
        int C = sc.nextInt();
        
        char[][] arr = new char[R][C];
        int[][] fire = new int[R][C]; // 불의 전파에 대한 시간 기록용
        int[][] dist = new int[R][C]; // 지훈이의 이동 시간 기록용
        
        for(int i=0; i<R; i++) {
            int j=0;
            char[] input = sc.next().toCharArray();
            for(char c : input) arr[i][j++] = c;
        }

        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};

        Queue<int[]> q_fire = new LinkedList<>();
        Queue<int[]> q_dist = new LinkedList<>();


        // 1. 불,지훈의 시작점 위치를 큐에 추가
        for(int i=0; i<R; i++) {
            Arrays.fill(fire[i], -1);
            Arrays.fill(dist[i], -1);
            for(int j=0; j<C; j++) {
                if(arr[i][j] == 'F') {
                    q_fire.offer(new int[] {i,j});
                    fire[i][j] = 0;
                }
                if(arr[i][j] == 'J') {
                    q_dist.offer(new int[] {i,j});
                    dist[i][j] = 0;
                }
            }
        }
        
        // 2. 불의 전파 속도 탐색
        while(!q_fire.isEmpty()) {
            int[] cur = q_fire.poll();
            for(int d=0; d<4; d++) {
                int nx = cur[0] + dx[d];
                int ny = cur[1] + dy[d];
                if(nx > -1 && nx < R && ny > -1 && ny < C && fire[nx][ny] == -1 && arr[nx][ny] != '#') {
                    q_fire.offer(new int[] {nx,ny});
                    fire[nx][ny] = fire[cur[0]][cur[1]] + 1;
                }
            }
        }
        

        // 3. 불의 전파 속도 결과를 참고하며, 지훈이의 이동 시간 탐색
        while(!q_dist.isEmpty()) {
            int[] cur = q_dist.poll();
            for(int d=0; d<4; d++) {
                int nx = cur[0] + dx[d];
                int ny = cur[1] + dy[d];
                // 범위 벗어남 -> 탈출 성공
                if(nx < 0 || nx >= R || ny < 0 || ny >= C) {
                    System.out.println(dist[cur[0]][cur[1]] + 1);
                    return;
                }
                // 이미 방문한 곳이거나, 벽인 곳은 방문하지 않음
                if(dist[nx][ny] >= 0 || arr[nx][ny] == '#') continue;
                
                // 벽이 아닌 곳에 한하여, 불이 전파된 시간보다 이동한 거리가 더 클 경우 방문하지 않음
                if(fire[nx][ny] != -1 && fire[nx][ny] <= dist[cur[0]][cur[1]]+1) continue;
                
                dist[nx][ny] = dist[cur[0]][cur[1]] + 1;
                q_dist.offer(new int[] {nx,ny});
            }
        }

        System.out.println("IMPOSSIBLE");
    }
}