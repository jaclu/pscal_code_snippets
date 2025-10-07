#!/bin/sh

fnc_1() {
    fnc_2
}

fnc_2() {
    echo "Hello World!"
}

fnc_1
