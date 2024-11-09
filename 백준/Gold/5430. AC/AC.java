import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int T = Integer.parseInt(br.readLine());

        while(T-- > 0) {
            String p = br.readLine();
            int n = Integer.parseInt(br.readLine());
            
            String input = br.readLine();            
            ArrayDeque<Integer> d = new ArrayDeque<>();

            for (String s : input.substring(1, input.length()-1).split(",")) {
                if (!s.equals("")) d.offer(Integer.valueOf(s));
            }

            
            boolean reverse = false;
            boolean isError = false;
            for(int i=0; i<p.length(); i++) {
                if(p.charAt(i) == 'R') reverse = !reverse;
                else {
                    if(d.size() == 0) {
                        isError = true;
                        break;
                    }
                    if(reverse) d.pollLast();
                    else d.pollFirst();
                }
            }

            if(isError) System.out.println("error");
            else {
                StringBuilder sb = new StringBuilder();
                sb.append("[");
                while(!d.isEmpty()) {
                    sb.append(reverse ? d.pollLast() : d.pollFirst());
                    if(d.size() > 0) sb.append(",");
                }
                sb.append("]");
                System.out.println(sb);
            }
        }
    }
}