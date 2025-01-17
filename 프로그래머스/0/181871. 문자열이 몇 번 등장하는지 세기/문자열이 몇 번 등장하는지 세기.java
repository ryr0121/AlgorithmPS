class Solution {
    public int solution(String myString, String pat) {
        int answer = 0;
        for(int i=0; i<=myString.length()-pat.length(); i++) {
            String str = "";
            for(int j=0; j<pat.length(); j++) str += Character.toString(myString.charAt(i+j));
            if(str.equals(pat)) answer++;
        }
        return answer;
    }
}