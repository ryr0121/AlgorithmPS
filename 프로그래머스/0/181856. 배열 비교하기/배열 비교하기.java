class Solution {
    public int solution(int[] arr1, int[] arr2) {
        int answer = 0;
        if(arr1.length != arr2.length) {
            answer = (arr1.length > arr2.length) ? 1 : -1;
            
        } else {
            int arr1_sum = 0;
            int arr2_sum = 0;
            
            for(int n : arr1) arr1_sum += n;
            for(int n : arr2) arr2_sum += n;
            
            if(arr1_sum == arr2_sum) answer = 0;
            else answer = (arr1_sum > arr2_sum) ? 1 : -1;
        }
        return answer;
    }
}