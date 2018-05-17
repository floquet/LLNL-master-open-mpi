#!/bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

export what="llvm"

export versions="6.0.0"
export versions="${versions} 5.0.1  5.0.0"
export versions="${versions} 4.0.1  4.0.0"
export versions="${versions} 3.9.1  3.9.0  3.8.1  3.8.0  3.7.1  3.7.0  3.6.2  3.5.1  3.0"

census=( ${versions} )
echo "${#census[@]} versions of ${what} loaded"
