SRCPATH=/Users/toptierlabs/Desktop/Projects/test/x264/x264
prefix=/Users/toptierlabs/Desktop/Projects/test/x264/thin-x264/arm64
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
ARCH=AARCH64
SYS=MACOSX
CC=xcrun -sdk iphoneos clang -Wno-error=unused-command-line-argument-hard-error-in-future -arch arm64
CFLAGS=-Wno-maybe-uninitialized -Wshadow -O3 -ffast-math  -Wall -I. -I$(SRCPATH) -arch arm64  -std=gnu99 -fPIC -fomit-frame-pointer -fno-tree-vectorize
COMPILER=GNU
COMPILER_STYLE=GNU
DEPMM=-MM -g0
DEPMT=-MT
LD=xcrun -sdk iphoneos clang -Wno-error=unused-command-line-argument-hard-error-in-future -arch arm64 -o 
LDFLAGS= -arch arm64  -lm -lpthread -ldl
LIBX264=libx264.a
AR=ar rc 
RANLIB=ranlib
STRIP=strip
INSTALL=install
AS=extras/gas-preprocessor.pl xcrun -sdk iphoneos clang -Wno-error=unused-command-line-argument-hard-error-in-future -arch arm64
ASFLAGS= -I. -I$(SRCPATH) -DPREFIX -c -DSTACK_ALIGNMENT=16 -DPIC -DHIGH_BIT_DEPTH=0 -DBIT_DEPTH=8
RC=
RCFLAGS=
EXE=
HAVE_GETOPT_LONG=1
DEVNULL=/dev/null
PROF_GEN_CC=-fprofile-generate
PROF_GEN_LD=-fprofile-generate
PROF_USE_CC=-fprofile-use
PROF_USE_LD=-fprofile-use
HAVE_OPENCL=yes
default: lib-static
install: install-lib-static
LDFLAGSCLI = -ldl 
CLI_LIBX264 = $(LIBX264)
