class Solution {
    public int[] solution(int[] arr) {
        int first_2_idx = -1;
        int last_2_idx = -1;
        
        for(int i=0; i<arr.length; i++) {
            if(arr[i] == 2 && first_2_idx == -1) first_2_idx = i;
            else if((arr[i] == 2 && last_2_idx == -1) 
                    || (arr[i] == 2 && last_2_idx != -1)) last_2_idx = i;
        }
        
        if(first_2_idx == -1 && last_2_idx == -1) return new int[] {-1};
        else if(first_2_idx != -1 && last_2_idx == -1) return new int[] {arr[first_2_idx]};
        else {
            int[] answer = new int[last_2_idx-first_2_idx+1];
            int idx = 0;
            for(int i=first_2_idx; i<=last_2_idx; i++) answer[idx++] = arr[i];
            return answer;
        }
    }
}