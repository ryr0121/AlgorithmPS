import java.util.*;

class Solution {
    public int[] solution(int k, int[] score) {
        int[] answer = new int[score.length];
        ArrayList<Integer> rank = new ArrayList<>();
        for(int i=0; i<score.length; i++) {
            rank.add(score[i]);
            Collections.sort(rank, Collections.reverseOrder());
            if(rank.size() < k) answer[i] = Collections.min(rank);
            else answer[i] = rank.get(k-1);
        }
        return answer;
    }
}