#include <stdlib.h>

// minimal operator new/delete
void* operator new(size_t size) { return malloc(size); }
void operator delete(void* ptr) noexcept { free(ptr); }
void* operator new[](size_t size) { return malloc(size); }
void operator delete[](void* ptr) noexcept { free(ptr); }
