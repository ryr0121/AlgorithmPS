import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int T = Integer.parseInt(br.readLine());
        while(T-- > 0) {
            TreeSet<Long> q = new TreeSet<>();
            HashMap<Long, Integer> map = new HashMap<>();
            int k = Integer.parseInt(br.readLine());
            while(k-- > 0) {
                StringTokenizer st = new StringTokenizer(br.readLine());
                String cmd = st.nextToken();
                long num = Long.parseLong(st.nextToken());
                
                if(cmd.equals("I")) {
                    q.add(num); 
                    map.put(num, map.getOrDefault(num,0)+1);
                }
                else if(cmd.equals("D")) {
                    if(q.isEmpty()) continue;
                    
                    long target = 0;
                    if(num == 1) target = q.last();
                    else if(num == -1) target = q.first();

                    map.put(target, map.get(target)-1); 
                    if(map.get(target) == 0) {
                        map.remove(target);
                        q.remove(target);
                    }
                }
            }
            if(q.isEmpty()) System.out.println("EMPTY");    
            else System.out.println(q.last() + " " + q.first());
        }
    }
}