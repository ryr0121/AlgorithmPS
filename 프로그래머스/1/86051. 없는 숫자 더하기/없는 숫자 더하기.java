class Solution {
    public int solution(int[] numbers) {
        boolean[] check = new boolean[10];
        for(int number : numbers) check[number] = true;
        
        int answer = 0;
        for(int i=0; i<check.length; i++) answer += check[i] ? 0 : i;
        return answer;
    }
}