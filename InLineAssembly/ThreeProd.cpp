#include <stdio.h>

// Declare external Assembly procedure
extern "C" int ThreeProd(int a, int b, int c);

int main()
{
    int num1, num2, num3, result = 0;

    // Take input from user
    printf("Enter three numbers: ");
    scanf_s("%d %d %d", &num1, &num2, &num3);

    // Call Assembly procedure
    result = ThreeProd(num1, num2, num3);

    // Display result
    printf("\nProduct Result = %d\n", result);

    return 0;
}