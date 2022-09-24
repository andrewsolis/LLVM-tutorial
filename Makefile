CC=llvm-g++
CFLAGS=-g -O3 -I llvm/include -I llvm/build/include
LLVMFLAGS=`/usr/local/Cellar/llvm/15.0.0/bin/llvm-config --cxxflags --ldflags --system-libs --libs all`

chap2: chap2.cpp
	${CC} ${CFLAGS} ${LLVMFLAGS} chap2.cpp -o chap2

clean:
	rm -rf chap2 chap2.dSYM