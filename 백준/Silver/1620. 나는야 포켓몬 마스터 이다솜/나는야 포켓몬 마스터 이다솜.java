import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        StringBuilder sb = new StringBuilder();
        
        int N = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());
        
        HashMap<String, Integer> name_map = new HashMap<>();
        HashMap<Integer, String> idx_map = new HashMap<>();
        int idx = 1;

        while(N-- > 0) {
            String input = br.readLine();
            name_map.put(input, idx);
            idx_map.put(idx++, input);
        }

        while(M-- > 0) {
            String q = br.readLine();
            if(isNumber(q)) sb.append(idx_map.get(Integer.parseInt(q))).append("\n");
            else sb.append(name_map.get(q)).append("\n");
        }
        System.out.println(sb);
    }

    public static boolean isNumber(String str) {
        try {
            Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return false;
        }
        return true;
    }
}