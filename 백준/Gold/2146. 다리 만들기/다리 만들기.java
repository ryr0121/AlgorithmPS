import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int[][] arr = new int[N][N];
        for(int i=0; i<N; i++) {
            for(int j=0; j<N; j++) arr[i][j] = sc.nextInt();
        }

        boolean[][] ch = new boolean[N][N];
        Queue<int[]> q = new LinkedList<>();

        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};

        // 1. 섬 별로 각자 다른 영역번호 부여        
        int num = 1; // 영역 번호

        for(int i=0; i<N; i++) {
            for(int j=0; j<N; j++) {
                if(arr[i][j] == 1 && !ch[i][j]) {
                    num++;
                    q.offer(new int[] {i,j});
                    ch[i][j] = true;
                    arr[i][j] = num;
                    
                    while(!q.isEmpty()) {
                        int[] cur = q.poll();
                        for(int d=0; d<4; d++) {
                            int nx = cur[0] + dx[d];
                            int ny = cur[1] + dy[d];
                            if(nx > -1 && nx < N && ny > -1 && ny < N && !ch[nx][ny] && arr[nx][ny] == 1) {
                                q.offer(new int[] {nx,ny});
                                ch[nx][ny] = true;
                                arr[nx][ny] = num;
                            }
                        }
                    }
                }
            }
        }
        
        // 2. 섬 간의 이동 거리 최소값 구하기
        int res = Integer.MAX_VALUE;
        
        for(int i=0; i<N; i++) {
            for(int j=0; j<N; j++) {
                if(arr[i][j] > 1) {
                    q = new LinkedList<>();
                    ch = new boolean[N][N];
                    
                    q.offer(new int[] {i,j,0});
                    ch[i][j] = true;
                    
                    while(!q.isEmpty()) {
                        int[] cur = q.poll();
    
                        // 또 다른 섬에 진입한 경우
                        if(arr[cur[0]][cur[1]] != 0 && arr[cur[0]][cur[1]] != arr[i][j]) {
                            if(res > cur[2]-1) res = cur[2]-1;
                        }

                        if(cur[2] > res) continue; // 현재의 다리 길이 최소값보다 큰 경우는 가지치기
                        
                        for(int d=0; d<4; d++) {
                            int nx = cur[0] + dx[d];
                            int ny = cur[1] + dy[d];
    
                            if(nx < 0 || nx >= N || ny < 0 || ny >= N) continue; // 범위 넘어가면 탐색 제외
                            if(arr[nx][ny] == arr[i][j]) continue; // 같은 섬 내부라면 탐색 제외
                            if(ch[nx][ny]) continue; // 이미 방문했다면 탐색 제외
    
                            q.offer(new int[] {nx,ny,cur[2]+1});
                            ch[nx][ny] = true;
                        }
                    }
                }
            }
        }

        System.out.println(res); 
    }
}