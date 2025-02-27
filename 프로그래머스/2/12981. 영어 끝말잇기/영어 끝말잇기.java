import java.util.*;

class Solution {
    public int[] solution(int n, String[] words) {        
        int[] answer = {0,0};

        Set<String> word_set = new HashSet<>();
        String beforeWord = "";
        
        for(int i=0; i<words.length; i++) {
            if(word_set.contains(words[i]) || !checkBeforeWord(beforeWord, words[i])) {
                answer[0] = (i+1)%n == 0 ? n : (i+1)%n;
                answer[1] = (i+1)%n == 0 ? (i+1)/n : (i+1)/n + 1;
                break;
            }
            beforeWord = words[i];
            word_set.add(words[i]);
        }
        
        return answer;
    }
    
    public static boolean checkBeforeWord(String beforeWord, String word) {
        if(beforeWord.isEmpty()) return true;
        
        char[] beforeWordList = beforeWord.toCharArray();
        char[] wordList = word.toCharArray();
        
        return beforeWordList[beforeWordList.length-1] == wordList[0];
    }
}