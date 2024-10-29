class Solution {
    public int solution(String s) {
        String answer = "";
        
        String temp = "";
        for(int i=0; i<s.length(); i++) {
            String converted = convertToNum(temp);
            if (!converted.isEmpty()) {
                answer += converted;
                temp = "";
            }
            if (Character.isDigit(s.charAt(i))) {
                answer += Character.toString(s.charAt(i));
            } else {
                temp += Character.toString(s.charAt(i));
            }
        }
        if(!temp.isEmpty()) answer += convertToNum(temp);
        
        return Integer.parseInt(answer);
    }
    
    public String convertToNum(String num_str) {
        switch(num_str) {
            case "zero": return "0";
            case "one": return "1";
            case "two": return "2";
            case "three": return "3";
            case "four": return "4";
            case "five": return "5";
            case "six": return "6";
            case "seven": return "7";
            case "eight": return "8";
            case "nine": return "9";
        }
        return "";
    }
}