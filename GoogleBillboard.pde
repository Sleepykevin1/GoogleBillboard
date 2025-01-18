public class Main {
    public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";

    public void setup() {
        boolean found = false;
        for (int i = 2; i <= e.length() - 10 && !found; i++) {
            String digits = e.substring(i, i + 10);
            if (digits.indexOf('.') == -1) {
                double dNum = Double.parseDouble(digits);
                if (isPrime(dNum)) {
                    System.out.println("First 10-digit prime in e: " + dNum);
                    found = true;
                }
            }
        }
    }

    public boolean isPrime(double dNum) {
        if (dNum <= 1) return false;
        for (long i = 2; i <= Math.sqrt(dNum); i++) {
            if (dNum % i == 0) return false;
        }
        return true;
    }

    public static void main(String[] args) {
        Main main = new Main();
        main.setup();
    }
}
