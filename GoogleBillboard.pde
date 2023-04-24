public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
int start = 0;
int end = 10;

void setup() {
  while (end <= e.length()) {
    String digits = e.substring(start, end);
    double num = Double.parseDouble(digits);
    if (isPrime((long)num)) {
      System.out.println("First 10-digit prime in e: " + digits);
      break;
    }
    start += 1;
    end += 1;
  }
}

boolean isPrime(long num) {
  if (num < 2) {
    return false;
  }
  for (long i = 2; i <= Math.sqrt(num); i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

