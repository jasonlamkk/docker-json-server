#!/bin/bash

args="$@"

args="$@ -p 3000"

file=/data/db.json

args="$args db.json"

json-server $args
