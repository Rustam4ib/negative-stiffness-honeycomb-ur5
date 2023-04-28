#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/zhan/ros/touch_contr_ur/src/real_tactile_image"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/usr/local/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/usr/local/lib/python2.7/dist-packages:/home/zhan/ros/touch_contr_ur/src/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/zhan/ros/touch_contr_ur/src/build" \
    "/usr/bin/python" \
    "/home/zhan/ros/touch_contr_ur/src/real_tactile_image/setup.py" \
    build --build-base "/home/zhan/ros/touch_contr_ur/src/build/real_tactile_image" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/usr/local" --install-scripts="/usr/local/bin"
