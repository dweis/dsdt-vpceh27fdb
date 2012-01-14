all: dsdt.aml

dsdt.aml: dsdt.dsl
	iasl dsdt.dsl

clean:
	rm -f dsdt.aml

install: all
	cp dsdt.aml /Extra/dsdt.aml
