import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        LinkedList<Integer> queue = new LinkedList<>();

        int N = Integer.parseInt(br.readLine());
        
        for(int i=0; i<N; i++) {
            String s = br.readLine();
            StringTokenizer st = new StringTokenizer(s, " ");
            String cmd = st.nextToken();
            
            switch(cmd) {
                case "push":
                    queue.offer(Integer.parseInt(st.nextToken()));
                    break;
                case "pop":
                    sb.append(queue.isEmpty() ? -1 : queue.poll()).append("\n");
                    break;
                case "size":
                    sb.append(queue.size()).append("\n");
                    break;
                case "empty":
                    sb.append(queue.isEmpty() ? 1 : 0).append("\n");
                    break;
                case "front":
                    sb.append(queue.isEmpty() ? -1 : queue.peek()).append("\n");
                    break;
                case "back":
                    sb.append(queue.isEmpty() ? -1 : queue.peekLast()).append("\n");
                    break;
            }
        }
        System.out.println(sb);
    }
}