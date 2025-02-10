import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    static boolean[] ch;
    static Map<Integer, ArrayList<Integer>> map = new HashMap<>();;
    static StringBuilder sb = new StringBuilder();
    
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        int N = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());
        int V = Integer.parseInt(st.nextToken());
        
        for(int i=1; i<=N; i++) map.put(i, new ArrayList<Integer>());

        for(int i=0; i<M; i++) {
            st = new StringTokenizer(br.readLine());
            int u = Integer.parseInt(st.nextToken());
            int v = Integer.parseInt(st.nextToken());

            ArrayList<Integer> list = map.get(u);
            list.add(v);
            map.put(u, list);
            
            list = map.get(v);
            list.add(u);
            map.put(v, list);
        }

        ch = new boolean[N+1];
        dfs(V);
        sb.append("\n");
        
        ch = new boolean[N+1];
        bfs(V);
        
        System.out.println(sb);
    }

    public static void dfs(int cur) {
        ch[cur] = true;
        sb.append(cur).append(" ");

        List<Integer> nodes = new ArrayList<>(map.get(cur));
        Collections.sort(nodes);
        for(int n : nodes) {
            if(ch[n]) continue;
            dfs(n);
        }
    }

    public static void bfs(int start) {
        Queue<Integer> q = new LinkedList<>();
        q.offer(start);
        ch[start] = true;
        while(!q.isEmpty()) {
            int cur = q.poll();
            sb.append(cur).append(" ");

            List<Integer> nodes = new ArrayList<>(map.get(cur));
            Collections.sort(nodes);
            for(int n : nodes) {
                if(!ch[n]) {
                    q.offer(n);
                    ch[n] = true;
                }
            }
        }
    }
}