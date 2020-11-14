# The SQALE of CSIDH: Square-root velu Quantum-resistant isogeny Action with Low-weight Exponents

This repository ilustrates the practical implications of the quantum security analysis of [**The SQALE of CSIDH: Square-root velu Quantum-resistant isogeny Action with Low-weight Exponents**](), which are based on and detailed study of the Kuperberg's algorithm.

## Description of the C-code implementation

Summarizing, the presented C-code implementation corresponds with translation of the python-code implementation of [**On new Vélu's formulae and their applications to CSIDH and B-SIDH constant-time implementations**](https://eprint.iacr.org/2020/1109), but this time focusing on constant-time implementations of CSIDH for arbitrary primes. The primes used corresponds with the family of primes `p` such that `(p+1)/4` splits into `n` different small odd primes. Additionally, we also provide a code that estimates the costs to find a hidden shift of an imaginary quadratic order, i.e., to break CSIDH and related schemes, under a range of depth limits (for more details, to check its corresponding [README.md](quantum-cost-estimation/README.md) file).

The novelty of this C-code implementation relies on the large constant-time CSIDH instantiations (named them: CSIDH-1024, CSIDH-1792, CSIDH-2048, CSIDH-3072, CSIDH-4096, CSIDH-5120, CSIDH-6144, CSIDH-8192, CSIDH-9216).

### Compilation

The syntax and option for the compilation can be check by running `make help`, which prints the following
```bash
Remarks:
        # GCC compiler is choosen by default, and the variable CC is optional
Syntax:
        make csidh-all CC=[any version of gcc / any version of clang]
        make csidh BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]
        make bench-all CC=[any version of gcc / any version of clang]
        make bench BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]
Tests:
        make test BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] CC=[any version of gcc / any version of clang]
        make gae BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]
Debug:
        make debug BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]
        make valgrind BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]
Cleanup:
        make clean
        make deepclean
```

For example, let's assume we want to use CSIDH-`B` using `S`-style, where `B` and `S` denotes the bit-length of the prime characteristic `p` and `S` is one of `wd2` (OAYT-style), `wd1` (MCR-style), and `df` (dummy-free).
```bash
# For testing prime field, polynomial and elliptic curve arithmetics, and traditional and sqrt velu formulae (isogenies)
make test BITS=B
# Testing the group action evaluation of CSIDH (main block)
make gae BITS=B STYLE=S
# CSIDH key-exchange
make csidh BITS=B STYLE=S
# Benchmark
make bench BITS=B STYLE=S
```

Moreover, for compiling (and building) for all the provided CSIDH primes, just run
```bash
# CSIDH protocol
make csidh-all
# Benchmark
make bench-all
# Both of CSIDH and Benchmark
make
```

### Examples of runs

```bash
# Tests
make test BITS=1024
./fp-1024.test
./poly_mul_fp1024.test
./poly_redc_fp1024.test
./mont-fp1024.test
./isog-fp1024.test
# CSIDH
make csidh BITS=2048 STYLE=wd2
./csidh.2048-wd2.main
# Benchmark
make bench BITS=4096 STYLE=df
./csidh.4096-df.bench
```

## Remarks

This C-code implementation allows and easy integration with different primes (of any feasible bit-length). Additionally, one can use different consecutive small odd primes (instead of all the odd prime factors of `p+1`), and therefore different strategies in the Group Action Evaluation (check the files in `src/styles/`. for the required assignation). Any other instances can be integrated by using the python code of [**Adj _et al._**](https://github.com/JJChiDguez/velusqrt) (to be more precise, by using the python scripts `bounds.py`, `headers.py`, `sdacs.py`, and `ijk.py`).

## Authors

1. **Jorge Chávez-Saab** <jorge.chavez.saad@cinvestav.mx>,
2. **Jesús-Javier Chi-Domínguez** <jesus.chidominguez@tuni.fi>,
3. **Samuel Jaques** <sam@samueljaques.com>, and
4. **Francisco Rodríguez-Henríquez** <francisco@cs.cinvestav.mx>.


## License

This project is licensed under the GNU general public license - see the [LICENSE](LICENSE) file for details

## Funding

This project has received funding from the European Research Council (ERC) under the European Union's Horizon 2020 research and innovation programme (grant agreement No 804476). 
Samuel Jaques was supported by the University of Oxford Clarendon fund.
The fourth author received partial funds from the Mexican Science council CONACyT project 313572.
