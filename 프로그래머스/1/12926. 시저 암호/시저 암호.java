class Solution {
    public String solution(String s, int n) {
        String answer = "";
        String[] list = s.split("");
        for(int i=0; i<s.length(); i++) {
            if (s.charAt(i) == ' ') answer += " ";
            else {
                int asc = (int) s.charAt(i);
                asc += n;
                if (!Character.isAlphabetic((char)asc) 
                    || (Character.isUpperCase(s.charAt(i)) 
                        && Character.isLowerCase((char)asc))
                   ) asc -= 26 ;
                answer += Character.toString((char)asc);
            }
        }
        return answer;
    }
}