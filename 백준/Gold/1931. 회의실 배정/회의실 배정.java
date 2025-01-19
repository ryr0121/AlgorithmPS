import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;
        
        int N = Integer.parseInt(br.readLine());

        int[][] times = new int[N][2];
        for(int i=0; i<N; i++) {
            st = new StringTokenizer(br.readLine());
            times[i][0] = Integer.parseInt(st.nextToken());
            times[i][1] = Integer.parseInt(st.nextToken());
        }
        Arrays.sort(times, new Comparator<int[]>(){
            @Override
            public int compare(int[] o1, int[] o2) {
                if(o1[1] == o2[1]) return o1[0]-o2[0];
                else return o1[1]-o2[1];
            }
        });

        int end_time = times[0][1];
        int answer = 1;
        for(int i=1; i<N; i++) {
            if(times[i][0] >= end_time) {
                answer++;
                end_time = times[i][1];
            }
        }
        System.out.println(answer);
    }
}