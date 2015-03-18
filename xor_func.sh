#!/bin/bash

function xorstr {
    plaintext="$@"
    cyphertext=""
    for ((i=0; i < ${#plaintext}; i++ )); do
        ord=$(printf "%d" "'${plaintext:$i:1}")
        tmp=$(printf \\$(printf '%03o' $((ord ^ 90)) ))
        ciphertext="${ciphertext}${tmp}"
    done
    echo "$ciphertext"
    plaintext=""
    for ((i=0; i < ${#ciphertext}; i++ )); do
        ord=$(printf "%d" "'${ciphertext:$i:1}")
        tmp=$(printf \\$(printf '%03o' $((ord ^ 90)) ))
        plaintext="${plaintext}${tmp}"
    done
}
