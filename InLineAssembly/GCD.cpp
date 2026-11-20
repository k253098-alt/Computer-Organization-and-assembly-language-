#include <stdio.h>

// Declare external Assembly procedure
extern "C" int GCD(int a, int b);

int main()
{
    int num1, num2, result = 0;

    // Take input from user
    printf("Enter two numbers: ");
    scanf_s("%d %d", &num1, &num2);

    // Call Assembly procedure
    result = GCD(num1, num2);

    // Display result
    printf("\nGCD is: %d\n", result);

    return 0;
}