import java.util.*;

class Solution {
    public int[] solution(int N, int[] stages) {
        HashMap<Integer, Double> fail = new HashMap<>();
        Arrays.sort(stages);
        
        int total = stages.length;
        for(int i=1; i<=N; i++) {
            int cnt = 0;
            for(int j=0; j<stages.length; j++) if(stages[j] == i) cnt++;
            fail.put(i, (double) cnt/total);
            total -= cnt;
            if(total == 0) total = 1;
        }
        
        List<Integer> keys = new ArrayList<>(fail.keySet());
        keys.sort(new Comparator<Integer>() {
            @Override
            public int compare(Integer o1, Integer o2) {
                if(fail.get(o1) == fail.get(o2)) {
                    return o1.compareTo(o2);
                } else {
                    return fail.get(o2).compareTo(fail.get(o1));
                }
            }
        });
        
        int[] answer = new int[N];
        int idx = 0;
        for(Integer key : keys) {
            answer[idx] = key;
            idx++;
        }
        
        return answer;
    }
}