public class TestCalculator : Object {
  public static void test_add () {
    assert (2 == Calculator.plus (1, 1));
    assert (8 == Calculator.plus (7, 1));
  }

  public static void test_minus () {
    assert (2 == Calculator.minus (3, 1));
    assert (-6 == Calculator.minus (1, 7));
  }

  public static void test_multiply () {
    assert (1 == Calculator.multiply (1, 1));
    assert (84 == Calculator.multiply (7, 12));
    assert (0 == Calculator.multiply (0, 12));
  }

  public static void main (string[] args) {
    Test.init (ref args);
    Test.add_func ("/calculator/add", test_add);
    Test.add_func ("/calculator/minus", test_minus);
    Test.add_func ("/calculator/multiply", test_multiply);
    Test.run ();
  }
}
