class Solution {
    public String solution(String myString, String pat) {
        String answer = "";
        for(int i=0; i<=myString.length(); i++) {
            String tmp = myString.substring(0,i);
            if(tmp.length() >= pat.length()) {
                String last = tmp.substring(tmp.length()-pat.length(), tmp.length());
                if(last.equals(pat) && tmp.length() > answer.length()) answer = tmp;
            }
        }
        return answer;
    }
}