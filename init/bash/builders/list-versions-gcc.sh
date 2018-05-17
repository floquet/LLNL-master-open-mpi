#!/bin/bash
printf '%s\n' "$(date)  $(pwd)/${BASH_SOURCE[0]}"

export what="gcc"

export versions=""
export versions="${versions} 8.1.0"
export versions="${versions} 7.3.0  7.2.0  7.1.0"
export versions="${versions} 6.4.0  6.3.0  6.2.0  6.1.0"
export versions="${versions} 5.5.0  5.4.0  5.3.0  5.2.0  5.1.0"
export versions="${versions} 4.9.4  4.9.2  4.9.1  4.8.5  4.8.4" # 4.7.4  4.6.4  4.5.4"

census=( ${versions} )
echo "${#census[@]} versions of ${what} loaded"
