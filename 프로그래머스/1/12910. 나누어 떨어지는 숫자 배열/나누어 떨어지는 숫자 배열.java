import java.util.*;

class Solution {
    public int[] solution(int[] arr, int divisor) {
        List<Integer> can_divide = new ArrayList<>();
        for(int i=0; i<arr.length; i++) {
            if (arr[i]%divisor == 0) can_divide.add(arr[i]);
        }
        
        if (can_divide.size() == 0) can_divide.add(-1);
        int[] answer = new int[can_divide.size()];
        for(int i=0; i<can_divide.size(); i++) answer[i] = can_divide.get(i);
        Arrays.sort(answer);
        return answer;
    }
}