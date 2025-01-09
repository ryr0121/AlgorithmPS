import java.util.*;

class Solution {
    public int[] solution(int[] arr, int[] delete_list) {
        ArrayList<Integer> list = new ArrayList<>();
        for(int n : arr) {
            boolean flag = false;
            for(int del : delete_list) {
                if(del == n) {
                    flag = true;
                    break;
                }
            }
            if(!flag) list.add(n);
        }
        
        int[] answer = new int[list.size()];
        int idx = 0;
        for(int n : list) answer[idx++] = n;
        
        return answer;
    }
}