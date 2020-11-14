#ifndef POLY_MUL_H
#define POLY_MUL_H

#include "fp.h"
typedef fp *poly; // Polynomials are arrays of coeffs over Fq, lowest degree first

void poly_mul(poly h, const poly f, const int lenf, const poly g, const int leng);
void poly_mul_low(poly h, const int n, const poly f, const int lenf, const poly g, const int leng);
void poly_mul_middle(poly h, const poly g, const int leng, const poly f, const int lenf);
void poly_mul_selfreciprocal(poly h, const poly g, const int leng, const poly f, const int lenf);

void product_tree(poly H[], int DEG[], const int root, const poly F[], const int LENF, const int n);
void product_tree_selfreciprocal(poly H[], int DEG[], const int root, const poly F[], const int LENF, const int n);
void clear_tree(poly H[], const int root, const int n);

void product(fp c, const fp F[], const int n);
void poly_print(const poly f, const int degree, char *c);


void reciprocal(poly h, fp c, const poly f, const int lenf, const int n);
void poly_redc(poly h, const poly g, const int leng, const poly f, const int lenf,const poly f_inv, const fp c);
void reciprocal_tree(poly R[], fp A[], const int leng, const poly H[], const int DEG[], const int root, const int n);
void multieval_unscaled(fp REM[], const poly g, const int leng, const poly R[], const fp A[], const poly H[], const int DEG[], const int root, const int n);
void multieval_scaled(fp REM[], const poly G, const poly H[], const int DEG[], const int root, const int n);

#endif /* POLY_MUL_H */
