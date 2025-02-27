#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

echo "We've set up a GitHub Actions Workflow that will run all"
echo "of the shell scripts in this directory as a series of tests."
echo
echo "To fail any test, you should use the exit 1 command;"
echo "To end a test early as a success, you should use the exit 0 command."

echo "Invoke your program with the \$CALCULATOR variable; an example is below"

# Test 01: Ensure the program runs without error with a simple, valid invocation.
if ! $CALCULATOR 1 + 1; then
  echo 'ERROR! A valid run of the calculator (1 + 1) failed!'
  exit 1
fi

# Test 02: Ensure simple case has correct output...
if [[ $($CALCULATOR 1 + 1) -ne 2 ]]; then
  echo 'ERROR! A valid run of the calculator (1 + 1) failed to produce 2 as an output!'
  exit 1
fi

# Test 03: Ensure program errors with an invalid operand
if $CALCULATOR 3 @ 2; then
  echo 'ERROR! An invalid run of the application (3 @ 2) apparently succeeded?!'
  exit 1
fi

# Test 04: Ensure subtraction works correctly
if [[ $($CALCULATOR 10 - 4) -ne 6 ]]; then
  echo 'ERROR! 10 - 4 did not produce 6!'
  exit 1
fi

# Test 05: Ensure multiplication works correctly
if [[ $($CALCULATOR 6 \* 7) -ne 42 ]]; then
  echo 'ERROR! 6 * 7 did not produce 42!'
  exit 1
fi

# Test 06: Ensure division works correctly
if [[ $($CALCULATOR 8 / 2) -ne 4 ]]; then
  echo 'ERROR! 8 / 2 did not produce 4!'
  exit 1
fi

# Test 07: Ensure division by zero is handled correctly
if $CALCULATOR 9 / 0; then
  echo 'ERROR! Division by zero did not produce an error!'
  exit 1
fi

# Test 08: Ensure calculator handles negative numbers
if [[ $($CALCULATOR -5 + 2) -ne -3 ]]; then
  echo 'ERROR! -5 + 2 did not produce -3!'
  exit 1
fi

# Test 09: Ensure calculator handles multiple spaces correctly
if [[ $($CALCULATOR "  3  +   4  ") -ne 7 ]]; then
  echo 'ERROR! "  3  +   4  " did not produce 7!'
  exit 1
fi

echo "WOOHOO!! All tests passed! :D"
exit 0

