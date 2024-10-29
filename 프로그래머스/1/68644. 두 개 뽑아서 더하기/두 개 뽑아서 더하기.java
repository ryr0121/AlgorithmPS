import java.util.*;

class Solution {
    public int[] solution(int[] numbers) {
        int len = numbers.length;
        HashSet<Integer> set = new HashSet<>();
        for(int i=0; i<len; i++) {
            for(int j=0; j<len; j++) {
                if (i == j) continue;
                set.add(numbers[i]+numbers[j]);
            }
        }
        int[] answer = new int[set.size()];
        int idx = 0;
        Iterator iter = set.iterator();
        while(iter.hasNext()) answer[idx++] = (int)iter.next();
        Arrays.sort(answer);
        return answer;
    }
}