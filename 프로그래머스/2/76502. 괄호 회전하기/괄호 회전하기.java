import java.util.*;

class Solution {
    public int solution(String s) {
        int answer = 0;
        
        Queue<Character> chrs = new LinkedList<>();
        for(int i=0; i<s.length(); i++) chrs.offer(s.charAt(i));
        
        for(int i=0; i<s.length(); i++) {
            chrs.offer(chrs.poll());
            
            Stack<Character> stack = new Stack<>();
            for(char c : chrs) {
                if(c == '(' || c == '{' || c == '[') stack.push(c);
                else if(c == ')' && !stack.isEmpty() && stack.peek() == '(') {
                    stack.pop();
                }
                else if(c == '}' && !stack.isEmpty() && stack.peek() == '{') {
                    stack.pop();
                }
                else if(c == ']' && !stack.isEmpty() && stack.peek() == '[') {
                    stack.pop();
                }
                else stack.push(c);
            }
            if(stack.isEmpty()) answer++;
        }
        
        
        return answer;
    }
}