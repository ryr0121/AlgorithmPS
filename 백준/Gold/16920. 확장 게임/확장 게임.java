import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int M = sc.nextInt();
        int P = sc.nextInt();

        int[] players = new int[P+1];
        for(int i=1; i<=P; i++) players[i] = sc.nextInt();

        int[][] map = new int[N][M];
        for(int i=0; i<N; i++) {
            char[] input = sc.next().toCharArray();
            int j=0;
            for(char c : input) {
                if(c == '.') map[i][j++] = 0;
                else if(c == '#') map[i][j++] = -1;
                else map[i][j++] = Character.getNumericValue(c);
            }
        }

        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};

        Queue<int[]>[] q = new LinkedList[P+1];
        for(int i=1; i<=P; i++) q[i] = new LinkedList<>();

        for(int i=0; i<N; i++) {
            for(int j=0; j<M; j++) {
                if(map[i][j] != 0 && map[i][j] != -1) {
                    q[map[i][j]].offer(new int[] {i,j});
                }
            }
        }

        boolean empty = false;
        while(!empty) {
            // 큐 배열을 돌면서 빈 큐 개수 확인
            int empty_cnt = 0;
            for(int i=1; i<=P; i++) if(q[i].isEmpty()) empty_cnt++;
            
            if(empty_cnt == P) {
                empty = true;
                break;
            }

            for(int i=1; i<=P; i++) {
                for(int p=0; p<players[i]; p++) {
                    int q_size = q[i].size();
                    if(q_size == 0) break;
                    
                    while(q_size-- > 0) {
                        int[] cur = q[i].poll();

                        for(int d=0; d<4; d++) {
                            int nx = cur[0] + dx[d];
                            int ny = cur[1] + dy[d];

                            if(nx > -1 && nx < N && ny > -1 && ny < M && map[nx][ny] == 0) {
                                q[i].offer(new int[] {nx,ny});
                                map[nx][ny] = i;
                            }
                            
                        }
                    }
                }
            }
            
        }

        // 출력
        int[] res = new int[P+1];
        for(int i=0; i<N; i++) {
            for(int j=0; j<M; j++) {
                if(map[i][j] != 0 && map[i][j] != -1) res[map[i][j]]++;
            }
        }
        String str = "";
        for(int i=1; i<=P; i++) str += res[i] + " ";

        System.out.println(str);
    }
}