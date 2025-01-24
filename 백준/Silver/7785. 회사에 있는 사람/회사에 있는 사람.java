import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        
        int n = Integer.parseInt(br.readLine());
        HashMap<String, Boolean> map = new HashMap<>();
        while(n-- > 0) {
            String[] input = br.readLine().split(" ");
            if(input[1].equals("enter")) map.put(input[0], true); 
            else if(input[1].equals("leave")) {
                if(map.containsKey(input[0])) map.replace(input[0], false); 
                else map.put(input[0], false);
            }
        }

        ArrayList<String> list = new ArrayList<>();
        for(String name : map.keySet()) {
            if(map.get(name)) list.add(name);
        }
        
        Collections.sort(list);
        for(int i=list.size()-1; i>-1; i--) sb.append(list.get(i)).append("\n");
        System.out.println(sb);
    }
}