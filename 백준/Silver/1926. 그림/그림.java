import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int m = sc.nextInt();
        int[][] arr = new int[n][m];
        boolean[][] ch = new boolean[n][m]; // 방문 체크용
        for(int i=0; i<n; i++) {
            for(int j=0; j<m; j++) arr[i][j] = sc.nextInt();
        }

        int cnt = 0; // 그림 개수
        int max = 0; // 그림 넓이의 최대값
        Queue<int[]> q = new LinkedList<>();

        int[] dx = {-1, 0, 1, 0};
        int[] dy = {0, 1, 0, -1};
        
        for(int i=0; i<n; i++) {
            for(int j=0; j<m; j++) {
                if(arr[i][j] == 1 && !ch[i][j]) {
                    // BFS 탐색 시작
                    int tmp = 1;
                    q.offer(new int[] {i,j});
                    ch[i][j] = true;
                    while(!q.isEmpty()) {
                        int[] p = q.poll();
                        int x = p[0];
                        int y = p[1];
                        for(int d=0; d<4; d++) {
                            int nx = x + dx[d];
                            int ny = y + dy[d];
                            if(nx >= 0 && nx < n && ny >= 0 && ny < m && !ch[nx][ny] && arr[nx][ny] == 1) {
                                tmp++;
                                ch[nx][ny] = true;
                                q.offer(new int[] {nx,ny});
                            }
                        }
                    }
                    cnt++;
                    if(max < tmp) max = tmp;
                }
            }
        }
        System.out.println(cnt);
        System.out.println(max);
    }
}