#!/bin/bash

rew_prime() {
    num=$1
    python3 -c "import sympy; print(sympy.isprime($num))"
}