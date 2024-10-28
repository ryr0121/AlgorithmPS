import java.util.*;

class Solution {
    public int[] solution(int[] arr) {
        int[] answer = {};
        if (arr.length == 1) {
            answer = new int[1];
            answer[0] = -1;
        } else {
            answer = new int[arr.length-1];
            int min_num = Arrays.stream(arr).min().getAsInt();
            List<Integer> temp = new ArrayList<>();
            for(int i=0; i<arr.length; i++) {
                if (arr[i] == min_num) continue;
                temp.add(arr[i]);
            }
            for(int i=0; i<arr.length-1; i++) answer[i] = temp.get(i);
        }
        return answer;
    }
}