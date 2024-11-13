import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int K = sc.nextInt();

        Queue<Integer> q = new LinkedList<>();
        int[] dist = new int[100001];
        Arrays.fill(dist, -1);

        dist[N] = 0;
        q.offer(N);
        while(!q.isEmpty()) {
            int cur = q.poll();
            int[] dir = {2*cur, cur-1, cur+1};
            for(int next : dir) {
                if(next > -1 && next < 100001 && dist[next] == -1) {
                    q.offer(next);
                    int add_dist = (next == 2*cur) ? 0 : 1;
                    dist[next] = dist[cur] + add_dist;
                }
            }
        }
        System.out.println(dist[K]);
    }
}