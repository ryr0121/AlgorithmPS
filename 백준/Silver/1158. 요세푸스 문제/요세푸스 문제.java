import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String s = br.readLine();
        StringTokenizer st = new StringTokenizer(s);
        int n = Integer.parseInt(st.nextToken());
        int k = Integer.parseInt(st.nextToken());

        Queue<Integer> q = new LinkedList<>();
        for(int i=0; i<n; i++) q.add(i+1);

        StringBuilder sb = new StringBuilder();
        sb.append("<");
        while(q.size() > 1) {
            for(int i=0; i<(k-1); i++) q.offer(q.poll());
            sb.append(q.poll()+", ");
        }
        sb.append(q.poll()+">");
        System.out.println(sb);
    }
}