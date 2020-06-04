#!/usr/bin/bash
TAG_NAME=OpenSSL_1_1_1g
git clone --recursive -b $TAG_NAME https://github.com/openssl/openssl.git
cd openssl
PATH=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_HOME/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$PATH
./Configure android-${ARCH} -D__ANDROID_API__=21
make
zip ${ARCH}.zip *.a *.so
pwd
ls
