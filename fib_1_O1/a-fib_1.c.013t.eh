
;; Function main (main, funcdef_no=39, decl_uid=3181, cgraph_uid=40, symbol_order=39)

int main ()
{
  int result;
  int n;
  int D.3190;

  n = 0;
  result = 0;
  scanf ("%d", &n);
  n.0_1 = n;
  result = fib (n.0_1);
  printf ("%d\n", result);
  D.3190 = 0;
  goto <D.3192>;
  <D.3192>:
  n = {CLOBBER};
  goto <D.3191>;
  D.3190 = 0;
  goto <D.3191>;
  <D.3191>:
  return D.3190;
}



;; Function printf (<unset-asm-name>, funcdef_no=15, decl_uid=964, cgraph_uid=16, symbol_order=15)

__attribute__((artificial, gnu_inline, always_inline))
__attribute__((nonnull (1), format (printf, 1, 2)))
int printf (const char * restrict __fmt)
{
  int D.3193;

  D.3193 = __printf_chk (1, __fmt, __builtin_va_arg_pack ());
  goto <D.3194>;
  <D.3194>:
  return D.3193;
}



;; Function fib (fib, funcdef_no=40, decl_uid=3180, cgraph_uid=41, symbol_order=40)

int fib (int n)
{
  int result;
  int D.3197;

  if (n <= 2) goto <D.3195>; else goto <D.3196>;
  <D.3195>:
  D.3197 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.3198>;
  <D.3196>:
  result = 0;
  _1 = n + -1;
  _2 = fib (_1);
  _3 = n + -2;
  _4 = fib (_3);
  result = _2 + _4;
  D.3197 = result;
  goto <D.3198>;
  <D.3198>:
  return D.3197;
}


