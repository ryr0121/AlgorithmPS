import java.util.*;

class Solution {
    public int[] solution(int[] arr) {
        ArrayList<Integer> list = new ArrayList<>();
        for(int n : arr) list.add(n);
        
        while(!check(list.size())) list.add(0);
        
        int[] answer = new int[list.size()];
        int i = 0;
        for(int n : list) answer[i++] = n;
        
        return answer;
    }
    
    public boolean check(int n) {
        int e = (int)Math.sqrt(n)+1;
        for(int i=0; i<=e; i++) {
            if(Math.pow(2,i) == n) return true;
        }
        return false;
    }
}