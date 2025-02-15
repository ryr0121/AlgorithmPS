import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        StringTokenizer st = new StringTokenizer(br.readLine());

        int N = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());

        int[] ind = new int[N+1];
        HashMap<Integer, ArrayList<Integer>> adj = new HashMap<>();

        for(int i=0; i<M; i++) {
            st = new StringTokenizer(br.readLine());
            int a = Integer.parseInt(st.nextToken());
            int b = Integer.parseInt(st.nextToken());

            ind[b]++;

            ArrayList<Integer> list = adj.getOrDefault(a, new ArrayList<Integer>());
            list.add(b);
            adj.put(a, list);
        }

        Queue<Integer> q = new LinkedList<>();
        for(int i=1; i<=N; i++) {
            if(ind[i] == 0) q.offer(i);
        }

        while(!q.isEmpty()) {
            int cur = q.poll();
            sb.append(cur).append(" ");

            if(adj.get(cur) != null) {
                for(int n : adj.get(cur)) {
                    ind[n]--;
                    if(ind[n] == 0) q.offer(n);
                }
            }
        }

        System.out.println(sb);
    }
}