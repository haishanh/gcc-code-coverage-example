## gcc code coverage example

This is a very simple gcc code coverage example.

Prerequisite software:
 
[`gcc`][gcc] is the compiler used.
[`lcov`][lcov] is used to collect coverage data.

basic/
    To build:
        make
    Clean up:
        make clean

auto/
    To build:
        make
    Coverage:
        make coverage
    Clena up:
        make clean

[gcc]: https://gcc.gnu.org/
[lcov]: http://ltp.sourceforge.net/coverage/lcov.php
