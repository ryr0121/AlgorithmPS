class Solution {
    public int solution(String[] babbling) {
        int answer = 0;
        for(String b : babbling) {
            if(b.length() < 2) continue;
            
            int cnt = 0;
            int cur = 0;
            String sub = "";
            String before = "";
            
            while(cur < b.length()) {
                if(b.charAt(cur) == 'a' && cur+3 <= b.length()) {
                    sub = b.substring(cur,cur+3);
                    cur += 3;
                    if(sub.equals("aya")) {
                        if(before.equals(sub)) break;
                        else {
                            cnt += 3;
                            before = "aya";
                        }
                    }
                    
                } else if(b.charAt(cur) == 'y' && cur+2 <= b.length()) {
                    sub = b.substring(cur,cur+2);
                    cur += 2;
                    if(sub.equals("ye")) {
                        if(before.equals(sub)) break;
                        else {
                            cnt += 2;
                            before = "ye";
                        }
                    }
                    
                } else if(b.charAt(cur) == 'w' && cur+3 <= b.length()) {
                    sub = b.substring(cur,cur+3);
                    cur += 3;
                    if(sub.equals("woo")) {
                        if(before.equals(sub)) break;
                        else {
                            cnt += 3;
                            before = "woo";
                        }
                    }
                    
                } else if(b.charAt(cur) == 'm' && cur+2 <= b.length()) {
                    sub = b.substring(cur,cur+2);
                    cur += 2;
                    if(sub.equals("ma")) {
                        if(before.equals(sub)) break;
                        else {
                            cnt += 2;
                            before = "ma";
                        }
                    }
                    
                } else break;
            }
            
            if(cnt == b.length()) answer++;
        }
        return answer;
    }
}