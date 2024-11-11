import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int K = sc.nextInt();

        Queue<Integer> q = new LinkedList<>();
        int[] arr = new int[100001];
        Arrays.fill(arr, -1);

        arr[N] = 0;
        q.offer(N);

        while(!q.isEmpty()) {
            int cur = q.poll();
            int[] next = {cur-1, cur+1, cur*2};
            for(int d=0; d<3; d++) {
                if(next[d] < 0 || next[d] > 100000) continue;
                if(arr[next[d]] != -1) continue;
                if(next[d] == K) {
                    System.out.println(arr[cur]+1);
                    return;
                }
                q.offer(next[d]);
                arr[next[d]] = arr[cur] + 1;
            }
        }
        System.out.println(arr[K]);
    }
}