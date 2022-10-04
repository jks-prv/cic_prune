all: cic
	./cic

debug: cic
	./cic -d

cic: cic_gen.c
	cc -o cic cic_gen.c

clean:
	@rm -f cic *.vh
