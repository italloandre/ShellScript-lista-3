#!/bin/bash

tr -d '\n' < $1 > test
cat test
rm test