#include <stdio.h>
#include "main.h"
#include "main1.h"
#include "main2.h"

int main(int argc, char* argv[])
{
    printf("main.\n");
    main1();
    main2();
    return 0;
}