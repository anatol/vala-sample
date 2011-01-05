public errordomain CalculatorError {
    INVALID_OPERATION,
    INVALID_EXPRESSION
}

public class Calculator : Object {
	public static int plus (int a, int b) {
	  return a + b;
	}
	
	public static int minus (int a, int b) {
      return a - b;
	}
	
	public static int multiply (int a, int b) {
	  return a * b;
	}
	
	public static int evaluate (string input) throws CalculatorError {
	  try {
	    var regex = new Regex ("(\\d+)\\W*([\\+\\-\\*])\\W*(\\d+)");
  	    MatchInfo match;
	    if (!regex.match (input, 0, out match)) {
		  throw new CalculatorError.INVALID_EXPRESSION ("Invalid expression: %s", input);
	    }
	    var arg1 = match.fetch (1) .to_int ();
	    var op = match.fetch (2);
	    var arg2 = match.fetch (3) .to_int ();
	
	    switch (op) {
    	  case "+":
	        return plus (arg1, arg2);
	      case "-":
	        return minus (arg1, arg2);
	      case "*":
	        return multiply (arg1, arg2);
	      default:
	        throw new CalculatorError.INVALID_OPERATION ("Invalid operation %s", op);
	    }
	  } catch (RegexError e) {
		error(e.message);
	  }
	}
}
