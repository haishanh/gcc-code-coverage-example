## gcc code coverage example

This is a very simple gcc code coverage example.

A post ont this can be find [here][post], but this post is in Chinese.

Prerequisite software:
 
[`gcc`][gcc] is the compiler used.
[`lcov`][lcov] is a extenstion to gcov, used to collect coverage data.

in **basic/**, contains only build.

```text
    To build:
        make
    Clean up:
        make clean
```

in **cov/**, contains coverage binaries generation.

```text
    To build:
        make
    Coverage:
        make coverage
    Clena up:
        make clean
```

in **auto/**, contains coverage binaries generations, and automatic coverage test.

```text
    To build:
        make
    Coverage and test:
        make coverage
    Clena up:
        make clean
```

[post]: http://hanhaishan.com/2015/gcc-code-coverage/
[gcc]: https://gcc.gnu.org/
[lcov]: http://ltp.sourceforge.net/coverage/lcov.php
