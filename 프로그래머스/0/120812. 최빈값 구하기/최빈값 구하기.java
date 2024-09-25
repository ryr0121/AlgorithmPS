import java.util.*;

class Solution {
    public int solution(int[] array) {
        Map<Integer, Integer> map = new HashMap<>();
        for(int num : array) {
            map.put(num, map.getOrDefault(num, 0)+1);
        }
        
        int max = 0;
        int max_num = 0;
        for(int key : map.keySet()) {
            if(max < map.get(key)) {
                max = map.get(key);
                max_num = key;
            }
        }
        
        int max_num_cnt = 0;
        for(int key : map.keySet()) {
            if(map.get(key) == max) max_num_cnt++;
        }
        
        if(max_num_cnt == 1) return max_num;
        else return -1;
    }
}