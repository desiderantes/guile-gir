#! /bin/sh
mkdir -p m4
touch config.rpath
autoreconf -v --install || exit 1
glib-gettextize --force --copy || exit 1
./configure "$@"
