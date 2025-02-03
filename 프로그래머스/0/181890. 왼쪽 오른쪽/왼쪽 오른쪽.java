class Solution {
    public String[] solution(String[] str_list) {
        int s = 0, e = 0;
        for(int i=0; i<str_list.length; i++) {
            if(str_list[i].equals("l")) {
                s = 0;
                e = i;
                break;
            } else if(str_list[i].equals("r")) {
                s = i+1;
                e = str_list.length;
                break;
            }
        }
        
        String[] answer = new String[e-s];
        int idx = 0;
        for(int i=s; i<e; i++) answer[idx++] = str_list[i];
        
        return answer;
    }
}