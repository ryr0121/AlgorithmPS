import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        int N = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());
        
        Map<Integer,ArrayList<Integer>> map = new HashMap<>();
        for(int i=1; i<=N; i++) {
            map.put(i, new ArrayList<Integer>());
        }
        
        for(int i=0; i<M; i++) {
            st = new StringTokenizer(br.readLine());
            int u = Integer.parseInt(st.nextToken());
            int v = Integer.parseInt(st.nextToken());

            ArrayList<Integer> list;
            
            if(map.containsKey(u)) list = map.get(u);
            else list = new ArrayList<Integer>();
            list.add(v);
            map.put(u, list);

            if(map.containsKey(v)) list = map.get(v);
            else list = new ArrayList<Integer>();
            list.add(u);
            map.put(v, list);
        }
        
        int answer = 0;
        boolean[] ch = new boolean[N+1];
        Queue<Integer> q = new LinkedList<>();
        
        for(int key : map.keySet()) {
            if(!ch[key]) {
                ch[key] = true;
                q.offer(key);
                while(!q.isEmpty()) {
                    int cur = q.poll();
                    ArrayList<Integer> list = map.get(cur);
                    for(int n : list) {
                        if(!ch[n]) {
                            q.offer(n);
                            ch[n] = true;
                        }
                    }
                }
                answer++;
            }
        }

        System.out.println(answer);
    }
}