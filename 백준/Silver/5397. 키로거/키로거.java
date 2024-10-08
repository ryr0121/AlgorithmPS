import java.util.*;
import java.lang.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int t = Integer.parseInt(br.readLine());

        while (t-- > 0) {
            String input = br.readLine();
            LinkedList<Character> list = new LinkedList<>();
            ListIterator<Character> iter = list.listIterator();

            for (char c : input.toCharArray()) {
                switch (c) {
                    case '<':
                        if (iter.hasPrevious()) iter.previous();
                        break;
                    case '>':
                        if (iter.hasNext()) iter.next();
                        break;
                    case '-':
                        if (iter.hasPrevious()) {
                            iter.previous();
                            iter.remove();
                        }
                        break;
                    default:
                        iter.add(c);
                        break;
                }
            }

            StringBuilder sb = new StringBuilder();
            for (char c : list) sb.append(c);
            System.out.println(sb.toString());
        }

        br.close();
    }
}