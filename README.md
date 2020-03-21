# scheduler-test-suite

## Files
 * `tests/` : directory containing test output files for comparing during testing
 * `create_tests.sh` : script for creating new test output files given testing parameters
 * `scheduler.py` : main program to be tested
 * `scheduler_test.sh` : main test file that calls `scheduler.py` with list of parameters and compares output from test output files

## How to run
 * type `./scheduler_test.sh` into shell and it will run tests for all parameters defined within the file (index of param list corresponds to test# in 'tests/' directory)

## Adding more tests
 * Simply run `vim create_tests.sh` and edit the `arg` variable with desired parameters as well as increment the `tests/test#` test output file 
 * Run `vim scheduler_test.sh` and add the desired parameters to the `params` variable corresponding to the number specified in `tests/test#`
