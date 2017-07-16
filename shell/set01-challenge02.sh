#!/bin/bash

echo -n '1c0111001f010100061a024b53535009181c' \
    | cryt decode hex \
    | cryt encrypt xor --key="$(echo -n '686974207468652062756c6c277320657965' | cryt decode hex)" \
    | cryt encode hex
