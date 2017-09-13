#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME:
Check these declarations against the C/Fortran source code.
*/

/* .C calls */
extern void ADprobApproxInf(void *, void *, void *);
extern void ADprobExactInf(void *, void *, void *);
extern void ADprobN(void *, void *, void *, void *);
extern void ADtestR(void *, void *, void *, void *);
extern void Barnard(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void roman2int(void *, void *, void *);
extern void ScoreS(void *, void *, void *, void *, void *, void *, void *, void *);
extern void WaldS(void *, void *, void *, void *, void *, void *, void *, void *);
extern void wgt_himed(void *, void *, void *, void *);
extern void wgt_himed_i(void *, void *, void *, void *);

/* .Call calls */
extern SEXP between_num_(SEXP, SEXP, SEXP);
extern SEXP between_num_l(SEXP, SEXP, SEXP);
extern SEXP between_num_lm(SEXP, SEXP, SEXP);
extern SEXP between_num_lr(SEXP, SEXP, SEXP);
extern SEXP between_num_lrm(SEXP, SEXP, SEXP);
extern SEXP between_num_m(SEXP, SEXP, SEXP);
extern SEXP between_num_r(SEXP, SEXP, SEXP);
extern SEXP between_num_rm(SEXP, SEXP, SEXP);
extern SEXP conc(SEXP, SEXP, SEXP, SEXP);
extern SEXP _DescTools_bottom_i(SEXP, SEXP);
extern SEXP _DescTools_bottom_n(SEXP, SEXP);
extern SEXP _DescTools_compute_GCD(SEXP, SEXP);
extern SEXP _DescTools_compute_LCM(SEXP, SEXP);
extern SEXP _DescTools_conv_DecToBin(SEXP);
extern SEXP _DescTools_n_pow_sum(SEXP);
extern SEXP _DescTools_top_i(SEXP, SEXP);
extern SEXP _DescTools_top_n(SEXP, SEXP);
extern SEXP pip(SEXP, SEXP, SEXP, SEXP, SEXP, SEXP);
extern SEXP rkurt(SEXP, SEXP);
extern SEXP rskew(SEXP, SEXP);
extern SEXP tbrm(SEXP, SEXP);

/* .Fortran calls */
extern void F77_NAME(hoeffd)(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void F77_NAME(jtpdf)(void *, void *, void *, void *, void *, void *);
extern void F77_NAME(pan)(void *, void *, void *, void *, void *);

static const R_CMethodDef CEntries[] = {
  {"ADprobApproxInf", (DL_FUNC) &ADprobApproxInf,  3},
  {"ADprobExactInf",  (DL_FUNC) &ADprobExactInf,   3},
  {"ADprobN",         (DL_FUNC) &ADprobN,          4},
  {"ADtestR",         (DL_FUNC) &ADtestR,          4},
  {"Barnard",         (DL_FUNC) &Barnard,         10},
  {"roman2int",       (DL_FUNC) &roman2int,        3},
  {"ScoreS",          (DL_FUNC) &ScoreS,           8},
  {"WaldS",           (DL_FUNC) &WaldS,            8},
  {"wgt_himed",       (DL_FUNC) &wgt_himed,        4},
  {"wgt_himed_i",     (DL_FUNC) &wgt_himed_i,      4},
  {NULL, NULL, 0}
};

static const R_CallMethodDef CallEntries[] = {
  {"between_num_",            (DL_FUNC) &between_num_,            3},
  {"between_num_l",           (DL_FUNC) &between_num_l,           3},
  {"between_num_lm",          (DL_FUNC) &between_num_lm,          3},
  {"between_num_lr",          (DL_FUNC) &between_num_lr,          3},
  {"between_num_lrm",         (DL_FUNC) &between_num_lrm,         3},
  {"between_num_m",           (DL_FUNC) &between_num_m,           3},
  {"between_num_r",           (DL_FUNC) &between_num_r,           3},
  {"between_num_rm",          (DL_FUNC) &between_num_rm,          3},
  {"conc",                    (DL_FUNC) &conc,                    4},
  {"_DescTools_bottom_i",     (DL_FUNC) &_DescTools_bottom_i,      2},
  {"_DescTools_bottom_n",     (DL_FUNC) &_DescTools_bottom_n,      2},
  {"_DescTools_compute_GCD",  (DL_FUNC) &_DescTools_compute_GCD,   2},
  {"_DescTools_compute_LCM",  (DL_FUNC) &_DescTools_compute_LCM,   2},
  {"_DescTools_conv_DecToBin",(DL_FUNC) &_DescTools_conv_DecToBin, 1},
  {"_DescTools_n_pow_sum",    (DL_FUNC) &_DescTools_n_pow_sum,     1},
  {"_DescTools_top_i",        (DL_FUNC) &_DescTools_top_i,         2},
  {"_DescTools_top_n",        (DL_FUNC) &_DescTools_top_n,         2},
  {"pip",                     (DL_FUNC) &pip,                     6},
  {"rkurt",                   (DL_FUNC) &rkurt,                   2},
  {"rskew",                   (DL_FUNC) &rskew,                   2},
  {"tbrm",                    (DL_FUNC) &tbrm,                    2},
  {NULL, NULL, 0}
};

static const R_FortranMethodDef FortranEntries[] = {
  {"hoeffd", (DL_FUNC) &F77_NAME(hoeffd), 12},
  {"jtpdf",  (DL_FUNC) &F77_NAME(jtpdf),   6},
  {"pan",    (DL_FUNC) &F77_NAME(pan),     5},
  {NULL, NULL, 0}
};

void R_init_DescTools(DllInfo *dll)
{
  R_registerRoutines(dll, CEntries, CallEntries, FortranEntries, NULL);
  R_useDynamicSymbols(dll, FALSE);
}