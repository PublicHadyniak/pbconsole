# libprogbase v0.1.0

[Repository home](https://github.com/PublicHadyniak/libprogbase)

## Installation and linkage

Clone this repository, cd to newly created `libprogbase/` directory and execute this command in it:
~~~~
sudo make install
~~~~

Include header files from `include/` directory and compile your code with linker option `-lprogbase`:
~~~~
gcc main.c -lprogbase
~~~~

## Library update

### Auto (since 0.1.0) 

~~~~
sudo make update
~~~~

### Manual

You need to re-install library.

## Headers

### progbase.h

Sample usage to read all available data type values from terminal:
~~~~c
#include <stdio.h>
#include <stdlib.h>
#include <progbase.h>

int main(void) {
	int i = 0;
	long l = 0;
	float f = 0;
	double d = 0;
	string s = "";

	printf("Enter int: ");
	i = getInt();
	printf("Entered: %d\n", i);
	
	printf("Enter long: ");
	l = getLong();
	printf("Entered: %ld\n", l);

	printf("Enter float: ");
	f = getFloat();
	printf("Entered: %f\n", f);

	printf("Enter double: ");
	d = getDouble();
	printf("Entered: %lf\n", d);

	printf("Enter string: ");
	s = getString();
	printf("Entered: %s\n", s);
	
	freeString(s);
	return 0;
}
~~~~

Sleep milliseconds sample (since 0.1.0):
~~~~c
#include <stdio.h>
#include <progbase.h>

int main(void) {
	int i = 0;
	const unsigned long MILLIS = 100;
	
	for (i = 0; i < 100; i++) {
		if (0 == i % 10) {
			puts("");
		}
		printf("%i\t", i);
		fflush(stdout);
		sleepMillis(MILLIS);
	}
	puts("");
	return 0;
}
~~~~