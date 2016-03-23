@echo off

call buildconf

call configure.bat --help | findstr amqp
call configure.bat --help | findstr redis

rem  "--with-pgo"
call configure.bat "--enable-snapshot-build" "--enable-debug-pack" "--disable-zts" "--with-amqp=shared" "--enable-object-out-dir=../obj/" "--enable-phar-native-ssl" "--with-sqlite3" "--with-pdo-sqlite" "--enable-odbc" "--with-pdo-odbc" "--enable-redis=shared" "--enable-com-dotnet=shared" "--with-mcrypt=static" "--without-analyzer" >compile.log 2>compile-errors.log

nmake >compile.log 2>compile-errors.log

nmake build-dist >compile.log 2>compile-errors.log
