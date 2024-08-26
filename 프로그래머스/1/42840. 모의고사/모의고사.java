import java.util.*;

class Solution {
    public int[] solution(int[] answers) {        
        int[] ans1 = {1,2,3,4,5};
        int[] ans2 = {2,1,2,3,2,4,2,5};
        int[] ans3 = {3,3,1,1,2,2,4,4,5,5};
        
        int cnt1 = 0;
        int cnt2 = 0;
        int cnt3 = 0;
        
        int len = answers.length;
        for(int i=0; i<len; i++) {
            cnt1 += (ans1[i%5] == answers[i]) ? 1 : 0;
            cnt2 += (ans2[i%8] == answers[i]) ? 1 : 0;
            cnt3 += (ans3[i%10] == answers[i]) ? 1 : 0;
        }
        
        int max_cnt = 0;
        int[] cnt_arr = {cnt1, cnt2, cnt3};
        for(int c : cnt_arr) {
            if (max_cnt < c) max_cnt = c;
        }
        
        ArrayList<Integer> tmp = new ArrayList<>();
        for(int i=0; i<3; i++) {
            if (cnt_arr[i] == max_cnt) tmp.add(i+1);
        }
        
        int[] answer = new int[tmp.size()];
        for(int i=0; i<tmp.size(); i++) {
            answer[i] = tmp.get(i);
        }
        
        return answer;
    }
}