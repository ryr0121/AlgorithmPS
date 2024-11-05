import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static int n;
    public static long cnt;
    public static class Node {
        int h, cnt;
        Node(int h, int cnt) {
            this.h = h;
            this.cnt = cnt;
        }
    }
    public static Stack<Node> stk;

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        n = Integer.parseInt(br.readLine());
        stk = new Stack<Node>();

        for(int i = 0; i < n; i++) {
            int height = Integer.parseInt(br.readLine());
            Node cur = new Node(height, 1);

            while(!stk.isEmpty() && stk.peek().h <= height) {
                Node top = stk.pop();
                cnt += top.cnt;
                if(top.h == height) cur.cnt += top.cnt;
            }

            if(!stk.isEmpty()) cnt++;

            stk.push(cur);
        }

        bw.write(String.valueOf(cnt));
        bw.flush();
        bw.close();
        br.close();
    }
}