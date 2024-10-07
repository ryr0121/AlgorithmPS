import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        int n = Integer.parseInt(br.readLine());
        int[] called = new int[n];
        
        String s = br.readLine();
        StringTokenizer st = new StringTokenizer(s);
        for(int i=0; i<n; i++) called[i] = Integer.parseInt(st.nextToken());

        int y_cost = 0;
        for(int i=0; i<n; i++) y_cost += (called[i]/30 + 1) * 10;
        
        int m_cost = 0;
        for(int i=0; i<n; i++) m_cost += (called[i]/60 + 1) * 15;

        if (y_cost < m_cost) System.out.print("Y "+y_cost);
        else if (y_cost > m_cost) System.out.print("M "+m_cost);
        else System.out.println("Y M "+y_cost);
    }
}