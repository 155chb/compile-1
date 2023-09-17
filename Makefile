DOT_FILES := $(wildcard *.dot)
PNG_FILES := $(patsubst %.dot, %.png, $(DOT_FILES))
.PHONY: pre, lexer, ast-gcc, ast-llvm, cfg, ir-gcc, ir-llvm, asm, obj, exe, antiobj,antiexe

pre:
	gcc fib_1.c -E -o fib_1.i

lexer:
	clang -E -Xclang -dump-tokens fib_1.c

ast-gcc:
	gcc -fdump-tree-original-raw fib_1.c

ast-llvm:
	clang -E -Xclang -ast-dump fib_1.c

cfg:
	gcc -O0 -fdump-tree-all-graph fib_1.c

ir-gcc:
	gcc -O0 -fdump-rtl-all-graph fib_1.c

ir-llvm:
	clang -S -emit-llvm fib_1.c

asm:
	gcc -O0 -o fib_1.S -S -masm=att fib_1.i

obj:
	gcc -O0 -c -o fib_1.o fib_1.S

antiobj:
	objdump -d fib_1.o > fib_1-anti-obj.S
	nm fib_1.o > fib_1-nm-obj.txt

exe:
	gcc -O0 -o fib_1 fib_1.o

antiexe:
	objdump -d fib_1 > fib_1-anti-exe.S
	nm fib_1 > fib_1-nm-exe.txt

clean:
	rm -rf *.c.*

clean-all:
	rm -rf *.c.* *.o *.S *.dot *.out *.txt *.ll *.i fib_1

tpng: $(PNG_FILES)

%.png: %.dot
	dot -Tpng $< -o $@