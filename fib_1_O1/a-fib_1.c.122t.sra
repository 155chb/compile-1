
;; Function fib (fib, funcdef_no=40, decl_uid=3180, cgraph_uid=41, symbol_order=40)

int fib (int n)
{
  int result;
  int _1;
  int _2;
  int _3;
  int _4;
  int _5;

  <bb 2> [local count: 1073741824]:
  if (n_7(D) <= 2)
    goto <bb 4>; [51.12%]
  else
    goto <bb 3>; [48.88%]

  <bb 3> [local count: 524845000]:
  _1 = n_7(D) + -1;
  _2 = fib (_1);
  _3 = n_7(D) + -2;
  _4 = fib (_3);
  result_9 = _2 + _4;

  <bb 4> [local count: 1073741824]:
  # _5 = PHI <1(2), result_9(3)>
  return _5;

}



;; Function main (main, funcdef_no=39, decl_uid=3181, cgraph_uid=40, symbol_order=39) (executed once)

int main ()
{
  int result;
  int n;
  int n.0_1;

  <bb 2> [local count: 1073741824]:
  n = 0;
  scanf ("%d", &n);
  n.0_1 = n;
  result_5 = fib (n.0_1);
  __printf_chk (1, "%d\n", result_5);
  n ={v} {CLOBBER};
  return 0;

}


