all:
	cc -o cic cic_gen.c
	./cic

clean:
	@rm -f cic *.vh
