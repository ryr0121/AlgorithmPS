class Solution {
    public String[] solution(int n, int[] arr1, int[] arr2) {
        String[] answer = new String[n];
        
        for(int i=0; i<n; i++) {
            String map1 = Integer.toString(arr1[i], 2);
            String map2 = Integer.toString(arr2[i], 2);
            
            if(map1.length() < n) {
                String tmp = "";
                for(int j=0; j<n-map1.length(); j++) tmp += "0";
                map1 = tmp+map1;
            }
            if(map2.length() < n) {
                String tmp = "";
                for(int j=0; j<n-map2.length(); j++) tmp += "0";
                map2 = tmp+map2;
            }
            
            String res = "";
            for(int j=0; j<n; j++) {
                if(map1.charAt(j) == '1' || map2.charAt(j) == '1') res += "#";
                else res += " ";
            }
            answer[i] = res;
        }
        
        return answer;
    }
}