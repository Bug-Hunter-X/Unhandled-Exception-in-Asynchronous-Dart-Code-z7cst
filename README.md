# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code:  failure to handle exceptions properly in asynchronous operations. The `bug.dart` file shows an example of incomplete error handling.  The `bugSolution.dart` file presents an improved solution. 

## Problem
The initial code uses a try-catch block, but it may not catch all possible exceptions. This could lead to crashes or unexpected behavior.  The handling of the exceptions is also not very specific.

## Solution
The improved code provides more robust error handling.  It handles specific exceptions (like `TimeoutException`) separately, allowing for tailored responses.  A generic `catch` block is also included for unexpected errors. This ensures that any exception is handled gracefully, preventing program termination.