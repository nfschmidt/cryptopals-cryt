#!/bin/bash

for input in $(cat ../files/set01-challenge04.txt)
do
    echo $(
    echo -n "$input" \
        | cryt decode hex \
        | cryt attack xor --criterion=text --detailed
    )
done
