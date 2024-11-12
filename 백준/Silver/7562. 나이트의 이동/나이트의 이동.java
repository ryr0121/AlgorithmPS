import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int t = sc.nextInt();
        while(t-- > 0) {
            int l = sc.nextInt();
            int[] now = {sc.nextInt(), sc.nextInt()};
            int[] goal = {sc.nextInt(), sc.nextInt()};
            int[][] arr = new int[l][l];

            System.out.println(getResult(l, arr, now, goal));
        }
    }

    public static int getResult(int l, int[][] arr, int[] now, int[] goal) {
        int[] dx = {-2,-1,1,2,2,1,-1,-2};
        int[] dy = {1,2,2,1,-1,-2,-2,-1};

        Queue<int[]> q = new LinkedList<>();
        
        q.offer(now);
        arr[now[0]][now[1]] = 1;
        
        while(!q.isEmpty()) {
            int[] cur = q.poll();
            if(cur[0] == goal[0] && cur[1] == goal[1]) return arr[cur[0]][cur[1]]-1;
            for(int d=0; d<8; d++) {
                int nx = cur[0] + dx[d];
                int ny = cur[1] + dy[d];
                if(nx == goal[0] && ny == goal[1]) return arr[cur[0]][cur[1]];
                if(nx > -1 && nx < l && ny > -1 && ny < l && arr[nx][ny] == 0) {
                    q.offer(new int[] {nx,ny});
                    arr[nx][ny] = arr[cur[0]][cur[1]] + 1;
                }
            }
        }
        return 0;
    }
}