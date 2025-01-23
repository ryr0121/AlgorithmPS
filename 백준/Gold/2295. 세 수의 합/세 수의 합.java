import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());
        int[] U = new int[N];
        for(int i=0; i<N; i++) U[i] = Integer.parseInt(br.readLine());
        Arrays.sort(U);

        ArrayList<Integer> two_list = new ArrayList<>();
        for(int i=0; i<N; i++) {
            for(int j=i; j<N; j++) two_list.add(U[i]+U[j]);
        }
        Collections.sort(two_list);

        int[] two = new int[two_list.size()];
        int idx = 0;
        for(int n : two_list) two[idx++] = n;

        int answer = 0;
        for(int i=N-1; i>0; i--) {
            for(int j=0; j<i; j++) {
                if(binarySearch(U[i]-U[j], two) && answer < U[i]) answer = U[i];
            }
        }
        System.out.println(answer);
    }

    public static boolean binarySearch(int v, int[] arr) {
        int s = 0;
        int e = arr.length-1;
        while(s <= e) {
            int mid = (s+e)/2;
            if(arr[mid] < v) s = mid+1;
            else if(arr[mid] > v) e = mid-1;
            else return true;
        }
        return false;
    }
}