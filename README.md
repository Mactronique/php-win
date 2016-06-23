# php-win

The alternative build of PHP extension for 64 bit Windows.

[![Build status](https://ci.appveyor.com/api/projects/status/aeqe3svwjphmjjx7/branch/master?svg=true)](https://ci.appveyor.com/project/macintoshplus/php-win/branch/master)

# Why ?

This project provide the dll because pecl does not provide.

# Build configuration

PHP is build in NTS (`--disable-zts`) and only on x64 architecture.

The AMQP ext is shared.

The Redis ext is shared and the session handler is enabled.

# Contribute

## A new version is out ?

[ ] fork this repos

[ ] change the version

[ ] create pull request

