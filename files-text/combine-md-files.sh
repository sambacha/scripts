#!/bin/bash

ed -s < <(
    for f in *.md; do
        [[ $f = output.md ]] && continue
        printf '%s\n' "r $f" a '\newline' .
    done
    printf '%s\n' "w output.md" "q"
)

