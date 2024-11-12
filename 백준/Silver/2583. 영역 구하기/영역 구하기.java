import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int M = sc.nextInt();
        int N = sc.nextInt();
        int K = sc.nextInt();

        int[][] arr = new int[M][N];
        boolean[][] ch = new boolean[M][N];
        
        for(int i=0; i<K; i++) {
            int x1 = sc.nextInt();
            int y1 = sc.nextInt();
            int x2 = sc.nextInt();
            int y2 = sc.nextInt();

            for(int y=M-y2; y<M-y1; y++) {
                for(int x=x1; x<x2; x++) arr[y][x] = 1;
            }
        }

        // arr를 탐색하며 0으로 구성된 영역의 개수 파악
        List<Integer> cnt_list = new ArrayList<Integer>();
        Queue<int[]> q = new LinkedList<>();

        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};

        for(int i=0; i<M; i++) {
            for(int j=0; j<N; j++) {
                if(arr[i][j] == 0 && !ch[i][j]) {
                    q.offer(new int[] {i,j});
                    ch[i][j] = true;
                    int cnt = 1;
                    while(!q.isEmpty()) {
                        int[] cur = q.poll();
                        for(int d=0; d<4; d++) {
                            int nx = cur[0] + dx[d];
                            int ny = cur[1] + dy[d];
                            if(nx > -1 && nx < M && ny > -1 && ny < N && !ch[nx][ny] && arr[nx][ny] == 0) {
                                q.offer(new int[] {nx,ny});
                                ch[nx][ny] = true;
                                cnt++;
                            }
                        }
                    }
                    cnt_list.add(cnt);
                }
            }
        }
        Collections.sort(cnt_list);
        System.out.println(cnt_list.size());
        String str = "";
        for(int n : cnt_list) str += n + " ";
        System.out.println(str);
    }
}