import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int F = sc.nextInt(); // 건물 총 층수
        int S = sc.nextInt(); // 강호의 시작 위치
        int G = sc.nextInt(); // 목표 층
        int U = sc.nextInt();
        int D = sc.nextInt();

        Queue<Integer> q = new LinkedList<>();
        int[] dist = new int[F+1]; // 0번째 인덱스는 무시(층수는 1부터 시작하므로)
        Arrays.fill(dist, -1);
        
        int[] dir = {U, -1*D};
        dist[S] = 0;
        q.offer(S);
        while(!q.isEmpty()) {
            int cur = q.poll();
            for(int d : dir) {
                int next = cur + d;
                if(next > 0 && next <= F && dist[next] == -1) {
                    dist[next] = dist[cur] + 1;
                    q.offer(next);
                }
            }
        }
        System.out.println(dist[G] == -1 ? "use the stairs" : dist[G]);
    }
}