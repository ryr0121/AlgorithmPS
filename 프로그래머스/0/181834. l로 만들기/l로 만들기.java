class Solution {
    public String solution(String myString) {
        String answer = "";
        for(int i=0; i<myString.length(); i++) {
            answer += Character.toString((myString.charAt(i) < 'l') 
                                         ? 'l' : myString.charAt(i));
        }
        return answer;
    }
}