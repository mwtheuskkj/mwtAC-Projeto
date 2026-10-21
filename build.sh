#!/usr/bin/env bash
# Compila o mwtAC e gera build/mwtAC.jar (com o JNativeHook embutido).
set -e
cd "$(dirname "$0")"
rm -rf build && mkdir -p build/classes build/fat
javac -encoding UTF-8 -cp lib/jnativehook-2.2.2.jar -d build/classes $(find src -name "*.java")
(cd build/fat && unzip -qo ../../lib/jnativehook-2.2.2.jar && rm -f META-INF/*.SF META-INF/*.RSA META-INF/*.DSA)
cp -r build/classes/* build/fat/
printf 'Main-Class: mwtac.Main\n' > build/manifest.txt
jar cfm build/mwtAC.jar build/manifest.txt -C build/fat .
echo "Pronto: build/mwtAC.jar"
