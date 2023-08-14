#!/bin/bash -xv

out=$(seq 5 | ./plus.py)

[ "${out}" = 15 ]
