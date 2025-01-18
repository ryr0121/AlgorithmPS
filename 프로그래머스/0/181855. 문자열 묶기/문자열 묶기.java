import java.util.*;

class Solution {
    public int solution(String[] strArr) {
        HashMap<Integer, Integer> map = new HashMap<>();
        for(String str : strArr) map.put(str.length(), map.getOrDefault(str.length(), 0)+1);

        int answer = 0;
        for(int key : map.keySet()) {
            if(answer < map.get(key)) answer = map.get(key);
        }
        return answer;
    }
}