import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        
        int N = Integer.parseInt(br.readLine());
        ArrayList<Integer> list = new ArrayList<>();
        for(int i=0; i<N; i++) list.add(Integer.parseInt(br.readLine()));
        Collections.sort(list, Collections.reverseOrder());

        for(int n : list) sb.append(n).append("\n");
        System.out.println(sb);
    }
}