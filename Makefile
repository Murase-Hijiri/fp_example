FC=flang
OUT_DIR=./out

CFLAGS=-O2 -J$(OUT_DIR)
OMPFLAG=-I/usr/lib -lomp

libfoo.so : ./src/foo.f90 $(OUT_DIR)
	$(FC) $(CFLAGS) -shared -o $(OUT_DIR)/libfoo.so ./src/foo.f90

$(OUT_DIR) :
	mkdir $(OUT_DIR)

.PHONY: clean
clean :
	rm -rf $(OUT_DIR)





