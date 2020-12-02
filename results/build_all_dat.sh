#!/bin/bash
python3 parse_results.py 1024 > ../../manuscript/figures/boxplot-csidh-1024.dat
python3 parse_results.py 1792 > ../../manuscript/figures/boxplot-csidh-1792.dat
python3 parse_results.py 2048 > ../../manuscript/figures/boxplot-csidh-2048.dat
python3 parse_results.py 3072 > ../../manuscript/figures/boxplot-csidh-3072.dat
python3 parse_results.py 4096 > ../../manuscript/figures/boxplot-csidh-4096.dat
python3 parse_results.py 5120 > ../../manuscript/figures/boxplot-csidh-5120.dat
python3 parse_results.py 6144 > ../../manuscript/figures/boxplot-csidh-6144.dat
python3 parse_results.py 8192 > ../../manuscript/figures/boxplot-csidh-8192.dat
python3 parse_results.py 9216 > ../../manuscript/figures/boxplot-csidh-9216.dat


