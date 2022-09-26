CC=llvm-g++
CFLAGS=-g -O3 -I llvm/include -I llvm/build/include
LLVMFLAGS=`/usr/local/Cellar/llvm/15.0.0/bin/llvm-config --cxxflags --ldflags --system-libs --libs all`

chap2: chap2.cpp
	${CC} ${CFLAGS} ${LLVMFLAGS} chap2.cpp -o chap2

chap3: chap3.cpp
	${CC} ${CFLAGS} ${LLVMFLAGS} chap3.cpp -o chap3

chap4: chap4.cpp 
	${CC} ${CFLAGS} ${LLVMFLAGS} chap4.cpp -o chap4

clean:
	rm -rf chap2 chap2.dSYM chap3 chap3.dSYM chap4 chap4.dSYM