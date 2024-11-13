import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int[][] arr = new int[N][N];
        boolean[][] ch = new boolean[N][N];
        
        for(int i=0; i<N; i++) {
            for(int j=0; j<N; j++) arr[i][j] = sc.nextInt();
        }

        // 안전영역의 최대값 구하기
        // h는 arr내 최소값 ~ 최대값의 범위를 돌며 변경됨
        // 높이가 h이하인 점 -> 잠김 -> 안전지역 X (0으로 여김)
        // 높이가 h초과인 점 -> 잠기지 않음 -> 안전지역 O (1로 여김)

        Queue<int[]> q = new LinkedList<>();
        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};
        
        int res = 0;
        int cnt = 0;
        
        for(int h=0; h<101; h++) {
            ch = new boolean[N][N];
            cnt = 0;
            for(int i=0; i<N; i++) {
                for(int j=0; j<N; j++) {
                    if(arr[i][j] > h && !ch[i][j]) {
                        q.offer(new int[] {i,j});
                        ch[i][j] = true;
                        cnt++;
                        while(!q.isEmpty()) {
                            int[] cur = q.poll();
                            for(int d=0; d<4; d++) {
                                int nx = cur[0] + dx[d];
                                int ny = cur[1] + dy[d];
                                if(nx > -1 && nx < N && ny > -1 && ny < N && arr[nx][ny] > h && !ch[nx][ny]) {
                                    q.offer(new int[] {nx,ny});
                                    ch[nx][ny] = true;
                                }
                            }
                        }
                    }
                }
            }
            if(res < cnt) res = cnt;
        }
        System.out.println(res);
    }
}