#!/bin/bash

cat ../files/set01-challenge06.txt \
    | tr -d '\n' \
    | cryt decode base64 \
    | cryt attack xor repeated \
        --min=2 \
        --max=40 \
        --criterion="text"\
        --keysize-criterion="hamming-distance"
