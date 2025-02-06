// 문제 URL : https://softeer.ai/practice/6282

import java.io.*;
import java.util.*;

public class Main {

    public static void main(String[] args) throws IOException {

        // 입력받기
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());
        int[][] map = new int[N][N];
        for(int i=0; i<N; i++) {
            char[] input = br.readLine().toCharArray();
            for(int j=0; j<N; j++) map[i][j] = Character.getNumericValue(input[j]);
        }
        
        // BFS를 활용한 블록 탐색
        ArrayList<Integer> block = new ArrayList<>();
        
        boolean[][] ch = new boolean[N][N]; // 방문 여부 확인용(방문O - true / 방문X - false)
        Queue<int[]> q = new LinkedList<>();
        
        int[] dx = {-1,0,1,0};
        int[] dy = {0,1,0,-1};
        
        for(int i=0; i<N; i++) {
            for(int j=0; j<N; j++) {
                if(map[i][j] == 1 && !ch[i][j]) {
                    int cnt = 1; // 장애물 개수
                    q.offer(new int[]{i,j});
                    ch[i][j] = true;
                    while(!q.isEmpty()) {
                        int[] cur = q.poll();
                        for(int d=0; d<4; d++) {
                            int nx = cur[0] + dx[d];
                            int ny = cur[1] + dy[d];
                            
                            if(nx < 0 || nx >= N || ny < 0 || ny >= N) continue; // 지도 범위를 벗어난 경우
                            if(map[nx][ny] == 0) continue; // 도로인 경우
                            if(map[nx][ny] == 1 && ch[nx][ny]) continue; // 이미 방문한 장애물일 경우

                            q.offer(new int[]{nx,ny});
                            ch[nx][ny] = true;
                            cnt++;
                        }
                    }
                    block.add(cnt);
                }
            }
        }

        // 결과 출력
        Collections.sort(block);
        System.out.println(block.size());
        for(int b : block) System.out.println(b);
    }
}
