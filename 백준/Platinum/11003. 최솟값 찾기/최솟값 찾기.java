import java.util.*;
import java.lang.*;
import java.io.*;


class Main {
    static class Node {
        public int value;
        public int index;

        Node(int value, int index) {
            this.value = value;
            this.index = index;
        }
    }
    
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        
        int n = Integer.parseInt(st.nextToken());
        int l = Integer.parseInt(st.nextToken());

        st = new StringTokenizer(br.readLine());

        Deque<Node> d = new LinkedList<>();
        for (int i = 0; i<n; i++) {
            int tmp = Integer.parseInt(st.nextToken());

            while(!d.isEmpty() && d.peekLast().value > tmp) d.pollLast();
            d.addLast(new Node(tmp, i));

            if (d.peekFirst().index <= i-l) d.pollFirst();
            bw.write(d.peekFirst().value + " ");
        }
        
        bw.flush();
        bw.close();
    }
}