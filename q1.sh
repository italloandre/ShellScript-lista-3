#!/bin/bash

tr -d -v -E '^$' < $1 > X
cat X
rm X
