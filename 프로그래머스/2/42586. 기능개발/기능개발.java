import java.util.*;

class Solution {
    public int[] solution(int[] progresses, int[] speeds) {        
        Queue<Integer> progress_queue = new LinkedList<>();
        Queue<Integer> speed_queue = new LinkedList<>();
        Stack<Integer> count_stack = new Stack<>();
        
        for(int p:progresses) progress_queue.offer(p);
        for(int s:speeds) speed_queue.offer(s);
        
        int days = 0;
        while (!progress_queue.isEmpty()) {
            days++;
            
            int tmp = progress_queue.peek() + speed_queue.peek()*days;
            int cnt = 0;
            while(tmp > 99) {
                cnt++;
                progress_queue.poll();
                speed_queue.poll();
                if(progress_queue.isEmpty()) break;
                tmp = progress_queue.peek() + speed_queue.peek()*days;
            }
            if (cnt > 0) count_stack.push(cnt);
        }
        
        int[] answer = new int[count_stack.size()];
        for(int i=0; i<count_stack.size(); i++) answer[i] = count_stack.get(i);
        return answer;
    }
}