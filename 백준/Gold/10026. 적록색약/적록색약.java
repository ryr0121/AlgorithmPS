import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        
        char[][] no_arr = new char[N][N];
        char[][] yes_arr = new char[N][N];
        
        for(int i=0; i<N; i++) {
            char[] input = sc.next().toCharArray();
            int j = 0;
            for(char c : input) {
                no_arr[i][j] = c;
                if(c == 'G') c = 'R';
                yes_arr[i][j++] = c;
            }
        }

        char[] no_target = {'R','G','B'};
        char[] yes_target = {'R','B'};

        int no = getResult(no_target, N, no_arr); // 적록색약이 아닌 사람이 본 구역의 개수
        int yes = getResult(yes_target, N, yes_arr); // 적록색약인 사람이 본 구역의 개수

        System.out.println(no + " " + yes);
    }

    public static int getResult(char[] target, int N, char[][] arr) {
        boolean[][] ch = new boolean[N][N];
        Queue<int[]> q = new LinkedList<>();

        int res = 0;
        
        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};
        
        for(char t : target) {
            for(int i=0; i<N; i++) {
                for(int j=0; j<N; j++) {
                    if(arr[i][j] == t && !ch[i][j]) {
                        res++;
                        q.offer(new int[] {i,j});
                        ch[i][j] = true;
                        while(!q.isEmpty()) {
                            int[] cur = q.poll();
                            for(int d=0; d<4; d++) {
                                int nx = cur[0] + dx[d];
                                int ny = cur[1] + dy[d];
                                if(nx > -1 && nx < N && ny > -1 && ny < N && !ch[nx][ny] && arr[nx][ny] == t) {
                                    q.offer(new int[] {nx,ny});
                                    ch[nx][ny] = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return res;
    }
}