#!/bin/bash

let a=5
let b=$a+3*9
echo "a=$a, b=$b"
let c=$b/\($a+3\)
let a+=c--
echo "a=$a, c=$c"
let "t2 = ((a = 8, 15 / 3))"
echo "t2 = $t2 a = $a"
