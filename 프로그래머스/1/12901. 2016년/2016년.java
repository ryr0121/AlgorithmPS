import java.util.*;

class Solution {
    public String solution(int a, int b) {
        int month = 1;
        int day = 1;
        int dow = 5;
        
        List<Integer> month_of_30days = Arrays.asList(4, 6, 9, 11);
        List<Integer> month_of_31days = Arrays.asList(1, 3, 5, 7, 8, 10, 12);
        
        while(month != a || day != b) {
            day++;
            dow++;
            if(dow>7) dow -= 7;
            if(day>29 && month==2) {
                month++;
                day -= 29;
            } else if(day>30 && month_of_30days.contains(month)) {
                month++;
                day -= 30;
            } else if(day>31 && month_of_31days.contains(month)) {
                month++;
                day -= 31;
            }
        }
        
        switch(dow) {
            case 1: return "MON";
            case 2: return "TUE";
            case 3: return "WED";
            case 4: return "THU";
            case 5: return "FRI";
            case 6: return "SAT";
            case 7: return "SUN";
            default: return "";
        }
    }
}