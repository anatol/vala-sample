public static void main () {
  while (true) {
    string? expression = stdin.read_line ();
    if (expression != null) {
      try {
        int value = Calculator.evaluate (expression);
        stdout.printf (" = %d\n", value);
      } catch (CalculatorError e) {
        stdout.printf ("%s\n", e.message);
      }
    }
  }
}

