class Solution {
    public int[] solution(int brown, int yellow) {
        int[] answer = {0,0};
        
        if (yellow == 1) {
            answer[0] = (brown-2)/2;
            answer[1] = 3;
        } else {
            for (int h=1; h<=(yellow/2); h++) {
                if (yellow%h != 0) continue;
                int w = yellow/h;
                int brown_cnt = (h+2)*(w+2)-yellow;
                if (brown_cnt == brown) {
                    answer[0] = w+2;
                    answer[1] = h+2;
                    break;
                }
            }
        }
        
        return answer;
    }
}