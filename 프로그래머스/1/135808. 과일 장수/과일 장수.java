import java.util.*;

class Solution {
    public int solution(int k, int m, int[] score) {
        int answer = 0;
        List<Integer> box = new ArrayList<>();
        
        Arrays.sort(score);
        for(int i=score.length-1; i>-1; i--) {
            box.add(score[i]);
            if(box.size() == m) {
                answer += Collections.min(box)*m;
                box.clear();
            }
        }
        return answer;
    }
}