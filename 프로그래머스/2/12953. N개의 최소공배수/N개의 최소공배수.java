class Solution {
    public int solution(int[] arr) {
        int mul = 1;
        while(true) {
            int v = arr[arr.length-1]*mul;
            boolean flag = true;
            for(int i=0; i<arr.length-1; i++) {
                if(v%arr[i] != 0) {
                    mul++;
                    flag = false;
                    break;
                }
            }
            if(flag) return v;
        }
    }
}