import java.util.*;

class Solution {
    static ArrayList<Integer> x = new ArrayList<>();
    
    public int[] solution(int[] arr, boolean[] flag) {
        for(int i=0; i<arr.length; i++) {
            if(flag[i]) addNum(arr[i]);
            else deleteNum(arr[i]);
        }
        
        int[] answer = new int[x.size()];
        int idx = 0;
        for(int n : x) answer[idx++] = n;
        
        return answer;
    }
    
    public static void addNum(int n) {
        for(int i=0; i<n*2; i++) x.add(n);
    }
    
    public static void deleteNum(int n) {
        for(int i=0; i<n; i++) x.remove(x.size()-1);
    }
}