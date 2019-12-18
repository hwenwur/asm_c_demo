#include <stdio.h>
#include <stdlib.h>

extern int multi2(int val);

int addxy(int x, int y)
{
    return multi2(x + y);
}
