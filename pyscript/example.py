from ctypes import CDLL, POINTER, c_double, c_int, cast

lib = CDLL("./out/libfoo.so")
vec = (c_double * 9)(*[1, 2, 3, 4, 5, 6, 7, 8, 9])
size = c_int(9)

lib.plus_one.argtypes = [POINTER(c_double), c_int]
lib.plus_one.restype = None

vec_ptr = cast(vec, POINTER(c_double))
print("Before:", list(vec))

lib.plus_one(vec_ptr, size)

print("After:", list(vec))



