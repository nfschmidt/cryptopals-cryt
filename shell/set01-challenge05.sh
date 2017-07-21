#!/bin/bash

echo -n "Burning 'em, if you ain't quick and nimble
I go crazy when I hear a cymbal" \
    | cryt encrypt xor --key="ICE" \
    | cryt encode hex
