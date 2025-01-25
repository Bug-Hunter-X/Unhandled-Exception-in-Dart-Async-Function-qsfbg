# Dart Async Function Exception Handling

This repository showcases a common error in Dart asynchronous programming: inadequate exception handling in async functions. The `fetchData` function demonstrates a potential issue where a caught exception is re-thrown, potentially leading to unhandled exceptions further up the call stack.  Proper error handling is crucial for application stability and robustness.

## Bug Description
The `fetchData` function in `bug.dart` uses a `try-catch` block to handle exceptions during network requests.  However, simply re-throwing the exception might cause the app to crash if not caught at a higher level.  Effective error handling should provide informative messages to the user or take appropriate corrective action, preventing unexpected app behavior.

## Solution
The `bugSolution.dart` file shows improved error handling. Instead of rethrowing the exception, the solution file handles the exception locally by logging a more detailed error message and performing some recovery action (or simply letting the caller know about the error).