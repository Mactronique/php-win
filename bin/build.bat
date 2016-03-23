@echo off

buildconf

configure.bat --help | finstr amqp
configure.bat --help | finstr redis

rem  "--with-pgo"
configure.bat "--enable-snapshot-build" "--enable-debug-pack" "--disable-zts" "--with-amqp=shared" "--enable-object-out-dir=../obj/" "--enable-phar-native-ssl" "--with-sqlite3" "--with-pdo-sqlite" "--enable-odbc" "--with-pdo-odbc" "--enable-redis=shared" "--enable-com-dotnet=shared" "--with-mcrypt=static" "--without-analyzer"

rem nmake

rem nmake build-dist