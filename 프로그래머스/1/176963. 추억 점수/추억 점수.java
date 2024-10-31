import java.util.*;

class Solution {
    public int[] solution(String[] name, int[] yearning, String[][] photo) {
        HashMap<String,Integer> map = new HashMap<>();
        int[] answer = new int[photo.length];
        
        for(int i=0; i<name.length; i++) map.put(name[i], yearning[i]);
        for(int i=0; i<photo.length; i++) {
            int sum = 0;
            for(String key : photo[i]) if(map.containsKey(key)) sum += map.get(key);
            answer[i] = sum;
        }
        
        return answer;
    }
}