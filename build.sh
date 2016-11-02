#!/bin/bash

export CVM_TARGET_TOOLS_PREFIX=arm-linux-androideabi-
export GNU_TOOLS_DIR=/opt/arm-linux-androideabi-4.9/arm-android
export WORK_DIR=$PWD
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export JAVA_PATH=$JAVA_HOME
export JDK_HOME=$JAVA_HOME
export CVM_JAVABIN=$JAVA_HOME/bin
export CVM_PRELOAD_LIB=true
export JAVAME_LEGAL_DIR=$PWD/legal
export PATH=$JAVA_HOME:$PATH
export CVM_DEBUG=false
export CVM_JIT=true
export USE_AAPCS=true
export J2ME_CLASSLIB=foundation
export CVM_PRELOAD_LIB=true
export TOOLS_DIR=$WORK_DIR/tools

echo "CVM_TARGET_TOOLS_PREFIX=$CVM_TARGET_TOOLS_PREFIX" >> cdc/build/linux-arm-generic/GNUmakefile

rm -rf tools/output
cd cdc/build/linux-arm-generic
make -f GNUmakefile bin VERBOSE_BUILD=true USE_VERBOSE_MAKE=true CVM_COMPILER_INCOMPATIBLE=false $@

# And run it in /tmp/phoneme:

# cd /tmp/phoneme
# sh /path/to/build | tee build.log
