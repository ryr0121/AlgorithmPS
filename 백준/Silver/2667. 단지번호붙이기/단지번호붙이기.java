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
            int j = 0;
            char[] input = sc.next().toCharArray();
            for(char c : input) arr[i][j++] = Character.getNumericValue(c);
        }

        int cnt = 0; // 총 단지 수
        List<Integer> sizes = new ArrayList<>(); // 각 단지의 영역 크기
        Queue<int[]> q = new LinkedList<>();

        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};

        for(int i=0; i<N; i++) {
            for(int j=0; j<N; j++) {
                if(arr[i][j] == 1 && !ch[i][j]) {
                    q.offer(new int[] {i,j});
                    ch[i][j] = true;
                    cnt++;
                    int size = 1; // 단지 영역 크기
                    while(!q.isEmpty()) {
                        int[] cur = q.poll();
                        for(int d=0; d<4; d++) {
                            int nx = cur[0] + dx[d];
                            int ny = cur[1] + dy[d];
                            if(nx > -1 && nx < N && ny > -1 && ny < N && !ch[nx][ny] && arr[nx][ny] == 1) {
                                q.offer(new int[] {nx,ny});
                                ch[nx][ny] = true;
                                size++;
                            }
                        }
                    }
                    sizes.add(size);
                }
            }
        }

        Collections.sort(sizes);
        System.out.println(cnt);
        for(int size : sizes) System.out.println(size);
    }
}