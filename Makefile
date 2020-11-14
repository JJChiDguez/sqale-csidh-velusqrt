SRC_DIR=src
INC_DIR=include
STRATEGY=include/strategy
SDAC_DIR=include/sdacs
IJK_DIR=include/ijk
ASM_DIR=src/fp
OBJ_DIR=obj
TEST=test
MAIN=main

SCC=gcc 

GCCFLAGS=-O3 -Os -Wall -Wextra -funroll-loops -fomit-frame-pointer -m64 -mbmi2 -no-pie
CLANGFLAGS=-O3 -Os -march=native -mtune=native -std=gnu99 -pedantic -Wall -Wextra
DEBUG=-fsanitize=undefined -fsanitize=address
VALGRIND=-g

# -------------------------------
ifeq ($(findstring clang,$(CC)),)
  CFLAGS=$(GCCFLAGS)
else
  CFLAGS=$(CLANGFLAGS)
endif
# -------------------------------

SOPs=$(wildcard include/sdacs/p*)
PRIMES=$(SOPs:include/sdacs/p%.h=%)

all: csidh-all bench-all

test: config fp$(BITS).test \
	mont-fp$(BITS).test \
	isog-fp$(BITS).test \
	poly_mul_fp$(BITS).test \
	poly_redc_fp$(BITS).test 

gae: config gae-$(STYLE)-fp$(BITS).test

csidh: config csidh-$(BITS)-$(STYLE).main

csidh-all:
	@echo ============================================================================================================== ; \
	make deepclean
	@for b in $(PRIMES) ; do \
		echo ; \
		echo ============================================================================================================== ; \
		echo Building for CSIDH-$$b and using OAYT-style ; \
		make csidh BITS=$$b STYLE=wd2 ; \
		echo ============================================================================================================== ; \
		echo Building for CSIDH-$$b and using MCR-style ; \
		make csidh BITS=$$b STYLE=wd1 ; \
		echo ============================================================================================================== ; \
		echo Building for CSIDH-$$b and using dummy-free-style ; \
		make csidh BITS=$$b STYLE=df ; \
	done

bench: config csidh-$(BITS)-$(STYLE).bench

bench-all:
	@echo ============================================================================================================== ; \
	make deepclean
	@for b in $(PRIMES) ; do \
		echo ; \
		echo ============================================================================================================== ; \
		echo Building for CSIDH-$$b and using OAYT-style ; \
		make bench BITS=$$b STYLE=wd2 ; \
		echo ============================================================================================================== ; \
		echo Building for CSIDH-$$b and using MCR-style ; \
		make bench BITS=$$b STYLE=wd1 ; \
		echo ============================================================================================================== ; \
		echo Building for CSIDH-$$b and using dummy-free-style ; \
		make bench BITS=$$b STYLE=df ; \
	done

# --------------------------------------------------------
# Test of a single CSIDH key exchange protocol
csidh-$(BITS)-$(STYLE).bench: $(MAIN)/bench.c $(OBJ_DIR)/rng.o $(OBJ_DIR)/uint$(BITS).o $(OBJ_DIR)/fp$(BITS).o $(OBJ_DIR)/poly_mul_fp$(BITS).o $(OBJ_DIR)/poly_redc_fp$(BITS).o \
	$(OBJ_DIR)/mont-fp$(BITS).o $(OBJ_DIR)/kps-fp$(BITS).o $(OBJ_DIR)/xisog-fp$(BITS).o $(OBJ_DIR)/xeval-fp$(BITS).o \
	$(OBJ_DIR)/gae-$(STYLE)-fp$(BITS).o $(OBJ_DIR)/csidh-$(BITS)-$(STYLE).o
	$(CC) $(CFLAGS) -D$(STYLE) -DP$(BITS) -I$(INC_DIR) -o $@ $^ -lm

# --------------------------------------------------------
# Test of a single CSIDH key exchange protocol
csidh-$(BITS)-$(STYLE).main: $(MAIN)/csidh.c $(OBJ_DIR)/rng.o $(OBJ_DIR)/uint$(BITS).o $(OBJ_DIR)/fp$(BITS).o $(OBJ_DIR)/poly_mul_fp$(BITS).o $(OBJ_DIR)/poly_redc_fp$(BITS).o \
	$(OBJ_DIR)/mont-fp$(BITS).o $(OBJ_DIR)/kps-fp$(BITS).o $(OBJ_DIR)/xisog-fp$(BITS).o $(OBJ_DIR)/xeval-fp$(BITS).o \
	$(OBJ_DIR)/gae-$(STYLE)-fp$(BITS).o $(OBJ_DIR)/csidh-$(BITS)-$(STYLE).o
	$(CC) $(CFLAGS) -D$(STYLE) -DP$(BITS) -I$(INC_DIR) -o $@ $^

# --------------------------------------------------------
# Tests regarding isogenies (kps, xeval, and xisog blocks)
gae-$(STYLE)-fp$(BITS).test: $(TEST)/gae-$(STYLE).c $(OBJ_DIR)/rng.o $(OBJ_DIR)/uint$(BITS).o $(OBJ_DIR)/fp$(BITS).o $(OBJ_DIR)/poly_mul_fp$(BITS).o $(OBJ_DIR)/poly_redc_fp$(BITS).o \
	$(OBJ_DIR)/mont-fp$(BITS).o $(OBJ_DIR)/kps-fp$(BITS).o $(OBJ_DIR)/xisog-fp$(BITS).o $(OBJ_DIR)/xeval-fp$(BITS).o \
	$(OBJ_DIR)/gae-$(STYLE)-fp$(BITS).o 
	$(CC) $(CFLAGS) -D$(STYLE) -DP$(BITS) -I$(INC_DIR) -o $@ $^

# --------------------------------------------------------
# Tests regarding isogenies (kps, xeval, and xisog blocks)
isog-fp$(BITS).test: $(TEST)/isog-test.c $(OBJ_DIR)/rng.o $(OBJ_DIR)/uint$(BITS).o $(OBJ_DIR)/fp$(BITS).o $(OBJ_DIR)/poly_mul_fp$(BITS).o $(OBJ_DIR)/poly_redc_fp$(BITS).o \
	$(OBJ_DIR)/mont-fp$(BITS).o $(OBJ_DIR)/kps-fp$(BITS).o $(OBJ_DIR)/xisog-fp$(BITS).o $(OBJ_DIR)/xeval-fp$(BITS).o
	$(CC) $(CFLAGS) -DP$(BITS) -I$(INC_DIR) -o $@ $^

# -------------------------------------------------
# Tests regarding Montgomery curve point arithmetic
mont-fp$(BITS).test: $(TEST)/mont-test.c $(OBJ_DIR)/rng.o $(OBJ_DIR)/uint$(BITS).o $(OBJ_DIR)/fp$(BITS).o $(OBJ_DIR)/mont-fp$(BITS).o
	$(CC) $(CFLAGS) -DP$(BITS) -I$(INC_DIR) -o $@ $^

# ---------------------------------------------------------------------
# Tests regarding polynomial reduction in fp with assembly
poly_redc_fp$(BITS).test: $(TEST)/poly_redc-test.c $(OBJ_DIR)/rng.o $(OBJ_DIR)/uint$(BITS).o $(OBJ_DIR)/fp$(BITS).o $(OBJ_DIR)/poly_mul_fp$(BITS).o $(OBJ_DIR)/poly_redc_fp$(BITS).o
	$(CC) $(CFLAGS) -DP$(BITS) -I$(INC_DIR) -o $@ $^

# ---------------------------------------------------------------------
# Tests regarding polynomial multiplication in fp with assembly
poly_mul_fp$(BITS).test: $(TEST)/poly_mul-test.c $(OBJ_DIR)/rng.o $(OBJ_DIR)/uint$(BITS).o $(OBJ_DIR)/fp$(BITS).o $(OBJ_DIR)/poly_mul_fp$(BITS).o
	$(CC) $(CFLAGS) -DP$(BITS) -I$(INC_DIR) -o $@ $^

# ---------------------------------------------------------------------------------
# Tests regarding to the prime field fp with assembly
fp$(BITS).test: $(TEST)/fp-test.c $(OBJ_DIR)/rng.o $(OBJ_DIR)/uint$(BITS).o $(OBJ_DIR)/fp$(BITS).o
	$(CC) $(CFLAGS) -DP$(BITS) -I$(INC_DIR) -o fp$(BITS).test $(TEST)/fp-test.c $(OBJ_DIR)/rng.o $(OBJ_DIR)/uint$(BITS).o $(OBJ_DIR)/fp$(BITS).o

# -------------------------------------------------
# Objects corresponding to polynomial reduction
$(OBJ_DIR)/poly_redc_fp$(BITS).o: $(SRC_DIR)/poly_redc.c $(INC_DIR)/poly.h $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(IJK_DIR)/p$(BITS).h $(SDAC_DIR)/p$(BITS).h $(INC_DIR)/rng.h
	$(CC) -I$(INC_DIR) -DP$(BITS) -c $< -o $@

# -------------------------------------------------
# Objects corresponding to polynomial multiplication
$(OBJ_DIR)/poly_mul_fp$(BITS).o: $(SRC_DIR)/poly_mul.c $(INC_DIR)/poly.h $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(IJK_DIR)/p$(BITS).h $(SDAC_DIR)/p$(BITS).h $(INC_DIR)/rng.h
	$(CC) -I$(INC_DIR) -DP$(BITS) -c $< -o $@

# ----------------------------------------------------------------------------------------------------------------
# Objects corresponding with the key exchange procedures
$(OBJ_DIR)/csidh-$(BITS)-$(STYLE).o: $(SRC_DIR)/csidh.c $(STRATEGY)/csidh-$(BITS)-$(STYLE).h $(INC_DIR)/styles.h $(INC_DIR)/csidh.h $(INC_DIR)/isog.h $(INC_DIR)/mont.h $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(IJK_DIR)/p$(BITS).h $(SDAC_DIR)/p$(BITS).h $(INC_DIR)/rng.h
	$(CC) $(CFLAGS) -I$(INC_DIR) -D$(STYLE) -DP$(BITS) -c $< -o $@

# ----------------------------------------------------------------------------------------------------------------
#  Objects corresponding with the Group Action Evaluiation with dummy-isogeny constructions and two torsion points
$(OBJ_DIR)/gae-$(STYLE)-fp$(BITS).o: $(SRC_DIR)/gae-$(STYLE).c $(STRATEGY)/csidh-$(BITS)-$(STYLE).h $(INC_DIR)/styles.h $(INC_DIR)/csidh.h $(INC_DIR)/isog.h $(INC_DIR)/mont.h $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(IJK_DIR)/p$(BITS).h $(SDAC_DIR)/p$(BITS).h $(INC_DIR)/rng.h
	$(CC) $(CFLAGS) -I$(INC_DIR) -D$(STYLE) -DP$(BITS) -c $< -o $@

# -----------------------------------------------------------------
#  Objects corresponding with xISOG procedure
$(OBJ_DIR)/xeval-fp$(BITS).o: $(SRC_DIR)/xeval.c $(INC_DIR)/isog.h $(INC_DIR)/mont.h $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(IJK_DIR)/p$(BITS).h $(SDAC_DIR)/p$(BITS).h $(INC_DIR)/rng.h
	$(CC) -I$(INC_DIR) $(CFLAGS) -DP$(BITS) -c $< -o $@

# -----------------------------------------------------------------
#  Objects corresponding with xISOG procedure
$(OBJ_DIR)/xisog-fp$(BITS).o: $(SRC_DIR)/xisog.c $(INC_DIR)/isog.h $(INC_DIR)/mont.h $(INC_DIR)/poly.h $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(IJK_DIR)/p$(BITS).h $(SDAC_DIR)/p$(BITS).h $(INC_DIR)/rng.h
	$(CC) -I$(INC_DIR) $(CFLAGS) -DP$(BITS) -c $< -o $@

# -----------------------------------------------------------------
#  Objects corresponding with KPs procedure
$(OBJ_DIR)/kps-fp$(BITS).o: $(SRC_DIR)/kps.c $(INC_DIR)/isog.h $(INC_DIR)/mont.h $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(IJK_DIR)/p$(BITS).h $(SDAC_DIR)/p$(BITS).h $(INC_DIR)/rng.h
	$(CC) -I$(INC_DIR) $(CFLAGS) -DP$(BITS) -c $< -o $@

# -----------------------------------------------------------------
#  Objects corresponding with the Montgomery curve point arithmetic
$(OBJ_DIR)/mont-fp$(BITS).o: $(SRC_DIR)/mont.c $(INC_DIR)/mont.h $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(IJK_DIR)/p$(BITS).h $(SDAC_DIR)/p$(BITS).h $(INC_DIR)/rng.h
	$(CC) -I$(INC_DIR) $(CFLAGS) -DP$(BITS) -c $< -o $@

# -------------------------------------------------------------------------------------------------------------
# Objects corresponding with the prime field arithmetic written in ASM code: just files with prejfix fp or uint
$(OBJ_DIR)/fp$(BITS).o: $(ASM_DIR)/fp$(BITS).s $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(INC_DIR)/rng.h
	$(SCC) -DP$(BITS) -c $< -o $@

$(OBJ_DIR)/uint$(BITS).o: $(ASM_DIR)/uint$(BITS).s $(INC_DIR)/fp.h $(INC_DIR)/primes.h $(INC_DIR)/rng.h
	$(SCC) -DP$(BITS) -c $< -o $@

# ------------------------------
# Pseudo random number generator
$(OBJ_DIR)/rng.o: $(SRC_DIR)/rng.c $(INC_DIR)/rng.h
	$(CC) -I$(INC_DIR) -c $(SRC_DIR)/rng.c -o $@

# ---------------------
#  Debug 
debug: CFLAGS+=$(DEBUG)
debug: csidh run

valgrind: CFLAGS+=$(VALGRIND)
valgrind: csidh run-valgrind

.PHONY : run run-valgrind

run:
	@echo ;
	@echo ============================================================================================================== ; \
	ASAN_OPTIONS=check_initialization_order=true:strict_init_order=true ./csidh-$(BITS)-$(STYLE).main

run-valgrind:
	@echo ;
	@echo ============================================================================================================== ; \
	valgrind --leak-check=full \
	--show-leak-kinds=all \
	--track-origins=yes \
	--verbose \
	--log-file=csidh-$(BITS)-$(STYLE).valgrind \
	./csidh-$(BITS)-$(STYLE).main

# ----------------
# Clean and Config 
clean:
	rm -f *.test
	rm -f *.main
	rm -f *.bench
	rm -f *.debug

config:
	mkdir -p $(OBJ_DIR)

deepclean:
	rm -f $(OBJ_DIR)/*
	rm -f *.test
	rm -f *.main
	rm -f *.bench
	rm -f *.valgrind

# ....................
# For help compilation
help:
	@echo "Remarks:"
	@echo "        # GCC compiler is choosen by default, and the variable CC is optional"
	@echo "Syntax:"
	@echo "        make csidh-all CC=[any version of gcc / any version of clang]"
	@echo "        make csidh BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]"
	@echo "        make bench-all CC=[any version of gcc / any version of clang]"
	@echo "        make bench BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]"
	@echo "Tests:"
	@echo "        make test BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] CC=[any version of gcc / any version of clang]"
	@echo "        make gae BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9120] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]"
	@echo "Debug:"
	@echo "        make debug BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]"
	@echo "        make valgrind BITS=[512 / 1024 / 1792 / 2048 / 3072 / 4096 / 5120 / 6144 / 8192 / 9216] STYLE=[wd2 / wd / df] CC=[any version of gcc / any version of clang]"
	@echo "Cleanup:"
	@echo "        make clean"
	@echo "        make deepclean"

