#!/bin/bash

docker run -ti \
  -v /home/neo/development/rk3328:/app/rk3328 \
  -v /home/neo/development/android2.31/:/app/android231 \
  android10 /bin/bash
