#!/bin/bash
VERSION=$(cat version)
rm -r package
mkdir -p package/DEBIAN
mkdir -p package/usr/bin
cp helloworld package/usr/bin/
sed s/@version@/$VERSION/ debian_control > package/DEBIAN/control
dpkg-deb --build package helloworld_$VERSION.deb
