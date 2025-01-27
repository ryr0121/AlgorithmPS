import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        int N = Integer.parseInt(st.nextToken());
        int K = Integer.parseInt(st.nextToken());

        int[][] jew = new int[N][2];
        TreeSet<Long> bag = new TreeSet<>(Comparator.reverseOrder());
        HashMap<Long, Integer> b_map = new HashMap<>();
        
        long answer = 0;
        
        for(int i=0; i<N; i++) {
            st = new StringTokenizer(br.readLine());
            jew[i][0] = Integer.parseInt(st.nextToken()); // 무게
            jew[i][1] = Integer.parseInt(st.nextToken()); // 가격
        }
        for(int i=0; i<K; i++) {
            long w = Long.parseLong(br.readLine());
            bag.add(w);
            b_map.put(w, b_map.getOrDefault(w,0)+1);
        }

        Arrays.sort(jew, new Comparator<int[]>() {
            @Override
            public int compare(int[] o1, int[] o2) {
                if(o1[1] == o2[1]) return o1[0]-o2[0];
                else return o2[1]-o1[1];
            }
        });

        for(int i=0; i<N; i++) {
            if(bag.isEmpty()) break;

            Long target = bag.floor((long)jew[i][0]);
            if(target != null) {
                answer += jew[i][1];
                b_map.put(target, b_map.get(target)-1);
                if(b_map.get(target) == 0) bag.remove(target);    
            }
        }
        System.out.println(answer);
    }
}