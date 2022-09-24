CC=llvm-g++
CFLAGS=-g -O3 -I llvm/include -I llvm/build/include
LLVMFLAGS=`/usr/local/Cellar/llvm/15.0.0/bin/llvm-config --cxxflags --ldflags --system-libs --libs all`

toy: toy.cpp
	${CC} ${CFLAGS} ${LLVMFLAGS} toy.cpp -o toy

clean:
	rm -rf toy toy.dSYM