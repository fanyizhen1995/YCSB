#!/bin/bash

git submodule update --remote
cd hiredis
make -j