import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int M = sc.nextInt();
        
        int[] target = new int[M];
        Deque<Integer> d = new LinkedList<>();
        for(int i=0; i<M; i++) target[i] = sc.nextInt();
        for(int i=1; i<=N; i++) d.offer(i);

        int res = 0;

        for(int i=0; i<M; i++) {
            // target[i]의 인덱스 파악
            int cur_idx = -1;
            for(int j=0; j<d.size(); j++) {
                int tmp = d.pollFirst();
                if(tmp == target[i]) cur_idx = j;
                d.offer(tmp);
            }
            
            while(d.peekFirst() != target[i]) {
                // target[i]의 인덱스가 2/N 이상이면 3번 수행 아니면 2번 수행
                if(cur_idx <= d.size()/2) d.offerLast(d.pollFirst());
                else d.offerFirst(d.pollLast());
                res++;
            }
            
            d.pollFirst();
        }

        System.out.println(res);
    }
}