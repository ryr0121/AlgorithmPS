import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        StringBuilder sb = new StringBuilder();
        Scanner sc = new Scanner(System.in);
        
        int N = sc.nextInt();
        int K = sc.nextInt();
        
        Queue<Integer> q = new LinkedList<>();
        int[] dist = new int[100001];
        int[] before = new int[100001]; // 각 위치에 도달하기 직전의 위치 정보 저장
        
        Arrays.fill(dist, -1);
        dist[N] = 0;
        q.offer(N);
        
        while(!q.isEmpty()) {
            int cur = q.poll();
            int[] next = {cur-1, cur+1, 2*cur};
            for(int n : next) {
                if(n > -1 && n < 100001 && dist[n] == -1) {
                    q.offer(n);
                    dist[n] = dist[cur] + 1;
                    before[n] = cur;
                }
                if(n == K) break;
            }
        }

        Stack<Integer> stack = new Stack<>();
        stack.push(K);
        int idx = K;
        while(idx != N) {
            stack.push(before[idx]);
            idx = before[idx];
        }

        while(!stack.isEmpty()) {
            sb.append(stack.pop()).append(" ");
        }

        System.out.println(dist[K]);
        System.out.println(sb.toString());
    }
}