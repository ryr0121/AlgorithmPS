class Solution {
    public String solution(String s) {
        String answer = "";
        String temp = "";
        for(int i=0; i<s.length(); i++) {
            // System.out.println(s.charAt(i) == ' ');
            if(s.charAt(i) == ' ') {
                for(int j=0; j<temp.length(); j++) {
                    if(j == 0 || j%2 == 0) {
                        answer += Character.toString(temp.charAt(j)).toUpperCase();
                    } else {
                        answer += Character.toString(temp.charAt(j)).toLowerCase();
                    }
                }
                answer += " ";
                temp = "";
                
            } else temp += Character.toString(s.charAt(i));
        }
        if(!temp.isEmpty()) {
            for(int j=0; j<temp.length(); j++) {
                if(j == 0 || j%2 == 0) {
                    answer += Character.toString(temp.charAt(j)).toUpperCase();
                } else {
                    answer += Character.toString(temp.charAt(j)).toLowerCase();
                }
            }
        }
        return answer;
    }
}