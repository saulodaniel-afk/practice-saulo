#!/bin/bash

VAR=$(echo "Saulo Daniel da Silva")

for i in {1..100}; 
    do
        if (( i % 2 == 0 )); then
            echo $i" - "$VAR 
        else
            echo $i
        fi
    done