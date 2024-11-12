import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int t = sc.nextInt();
        while(t-- > 0) {
            int w = sc.nextInt();
            int h = sc.nextInt();
            char[][] arr = new char[h][w];
            
            for(int i=0; i<h; i++) {
                int j=0;
                char[] input = sc.next().toCharArray();
                for(char c : input) arr[i][j++] = c;
            }
            
            int res = getEscapeResult(w, h, arr);
            System.out.println(res == -1 ? "IMPOSSIBLE" : res);            
        }
    }

    public static int getEscapeResult(int w, int h, char[][] arr) {
        int[][] fire = new int[h][w]; // 불의 전파 속도
        int[][] sg = new int[h][w]; // 상근이의 이동 속도
    
        Queue<int[]> q_fire = new LinkedList<>();
        Queue<int[]> q_sg = new LinkedList<>();

        // 1. 불과 상근이의 시작지점 큐에 추가
        for(int i=0; i<h; i++) {
            // 속도 기록용 2차원 배열값 모두 -1로 초기화(시작점이 0이므로)
            Arrays.fill(fire[i], -1);
            Arrays.fill(sg[i], -1);
            for(int j=0; j<w; j++) {
                if(arr[i][j] == '*') {
                    q_fire.offer(new int[] {i,j});
                    fire[i][j] = 0;
                }
                if(arr[i][j] == '@') {
                    q_sg.offer(new int[] {i,j});
                    sg[i][j] = 0;
                }
            }
        }

        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};
        
        // 2. 불의 전파 속도 탐색
        while(!q_fire.isEmpty()) {
            int[] cur = q_fire.poll();
            for(int d=0; d<4; d++) {
                int nx = cur[0] + dx[d];
                int ny = cur[1] + dy[d];
                if(nx > -1 && nx < h && ny > -1 && ny < w 
                   && fire[nx][ny] == -1 && arr[nx][ny] != '#') {
                    q_fire.offer(new int[] {nx, ny});
                    fire[nx][ny] = fire[cur[0]][cur[1]] + 1;
                   }
            }
        }

        // 3. 상근이의 이동 속도 탐색
        while(!q_sg.isEmpty()) {
            int[] cur = q_sg.poll();
            for(int d=0; d<4; d++) {
                int nx = cur[0] + dx[d];
                int ny = cur[1] + dy[d];

                // 범위 벗어남 -> 탈출 성공
                if(nx < 0 || nx >= h || ny < 0 || ny >= w) {
                    return sg[cur[0]][cur[1]]+1;
                    // continue;
                }

                // 이미 방문했거나 벽인 곳은 방문하지 않음
                if(sg[nx][ny] >= 0 || arr[nx][ny] == '#') continue;

                // 벽이 아닌 곳에 대해, 불이 전파된/될 곳이라면 방문하지 않음
                if(fire[nx][ny] != -1 && fire[nx][ny] <= sg[cur[0]][cur[1]]+1) continue;

                sg[nx][ny] = sg[cur[0]][cur[1]] + 1;
                q_sg.offer(new int[] {nx,ny});
            }
        }
        return -1;
    }
}