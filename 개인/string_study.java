import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Main main = new Main();
        System.out.println(main.solution_12());
//        main.solution_4();
    }

    public int solution_1() {
        Scanner scanner = new Scanner(System.in);
        String word = scanner.next();
        char find = scanner.next().charAt(0);

        word = word.toLowerCase();
        find = Character.toLowerCase(find);

        int cnt = 0;
        for(char c:word.toCharArray()) {
            if(c==find) { cnt++; }
        }
        return cnt;
    }

    public String solution_2() {
        Scanner scanner = new Scanner(System.in);
        String origin = scanner.next();

        String result = "";
        for(char c:origin.toCharArray()) {
            if (Character.isLowerCase(c)) {
                result += Character.toUpperCase(c);
            } else {
                result += Character.toLowerCase(c);
            }
        }
        return result;
    }

    public String solution_3() {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.nextLine();

        String[] words = input.split(" ");
        int maxLen = 0;
        String result = "";

        for (String word : words) {
            if (word.length() > maxLen) {
                maxLen = word.length();
                result = word;
            }
        }
        return result;
    }

    public void solution_4() {
        Scanner scanner = new Scanner(System.in);
        int cnt = scanner.nextInt();
        for (int i = 0; i < cnt; i++) {
            String input = scanner.next();
            String reverse = new StringBuilder(input).reverse().toString();
            System.out.println(reverse);
        }
    }

    public String solution_5() {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.next();
        int lt = 0, rt = input.length()-1;
        char[] chars = input.toCharArray();

        while (lt < rt) {
            if (!Character.isAlphabetic(chars[lt])) lt++;
            else if (!Character.isAlphabetic(chars[rt])) rt--;
            else {
                char temp = chars[lt];
                chars[lt] = chars[rt];
                chars[rt] = temp;

                lt++;
                rt--;
            }
        }
        return String.valueOf(chars);
    }

    public String solution_6() {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.next();
        String result = "";

        int len = input.length();
        for (int i = 0; i < len; i++) {
            if (input.indexOf(input.charAt(i)) == i) result += input.charAt(i);
        }

        return result;
    }

    public String solution_7() {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.next();
        input = input.toLowerCase();
        int len = input.length();

        for (int i = 0; i < len/2; i++) {
            if (input.charAt(i) != input.charAt(len-1-i)) return "NO";
        }
        return "YES";
    }

    public String solution_8() {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.nextLine();
        input = input.toLowerCase().replaceAll("[^a-z]", "");
        String reverse = new StringBuilder(input).reverse().toString();
        if (reverse.equals(input)) return "YES";
        else return "NO";
    }

    public int solution_9() {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.next();
        String result = "";
        int len = input.length();
        for (int i = 0; i < len; i++) {
            if (Character.isDigit(input.charAt(i))) result += input.charAt(i);
        }
        return Integer.parseInt(result);
    }

    public String solution_10() {
        Scanner scanner = new Scanner(System.in);
        String[] input = scanner.nextLine().split(" ");

        String word = input[0];
        char target = input[1].charAt(0);

        int len = word.length();
        String result = "";

        for (int i = 0; i < len; i++) {
            int min = 100;
            for (int j = 0; j < len; j++) {
                if (word.charAt(j) == target) {
                    int diff = Math.abs(i-j);
                    if (diff < min) min = diff;
                }
            }
            result += min + " ";
        }
        return result;
    }

    public String solution_11() {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.next() + " ";
        String result = "";

        int len = input.length();
        int cnt = 1;
        for (int i = 0; i < len-1; i++) {
            if (input.charAt(i) == input.charAt(i+1)) cnt++;
            else {
                result += input.charAt(i);
                if (cnt > 1) result += Integer.toString(cnt);
                cnt = 1;
            }
        }
        return result;
    }

    public String solution_12() {
        Scanner scanner = new Scanner(System.in);
        int cnt = scanner.nextInt();
        String input = scanner.next();
        int len = input.length()/cnt;
        String result = "";

        for (int i = 0; i < cnt; i++) {
            String word = input.substring(0, len)
                    .replace("#", "1")
                    .replace("*", "0");
            input = input.substring(len);
            result += (char)Integer.parseInt(word, 2);
        }
        return result;
    }
}
