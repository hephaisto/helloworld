#!/bin/bash
g++ -o helloworld -DPROGRAM_VERSION=\"$(cat version)\" helloworld.cpp
