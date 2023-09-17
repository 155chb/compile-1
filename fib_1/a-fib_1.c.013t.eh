
;; Function main (main, funcdef_no=6, decl_uid=2865, cgraph_uid=7, symbol_order=6)

int main ()
{
  int result;
  int n;
  int D.2874;

  n = 0;
  result = 0;
  scanf ("%d", &n);
  n.0_1 = n;
  result = fib (n.0_1);
  printf ("%d\n", result);
  D.2874 = 0;
  goto <D.2876>;
  <D.2876>:
  n = {CLOBBER};
  goto <D.2875>;
  D.2874 = 0;
  goto <D.2875>;
  <D.2875>:
  return D.2874;
}



;; Function fib (fib, funcdef_no=7, decl_uid=2864, cgraph_uid=8, symbol_order=7)

int fib (int n)
{
  int result;
  int D.2879;

  if (n <= 2) goto <D.2877>; else goto <D.2878>;
  <D.2877>:
  D.2879 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.2880>;
  <D.2878>:
  result = 0;
  _1 = n + -1;
  _2 = fib (_1);
  _3 = n + -2;
  _4 = fib (_3);
  result = _2 + _4;
  D.2879 = result;
  goto <D.2880>;
  <D.2880>:
  return D.2879;
}


