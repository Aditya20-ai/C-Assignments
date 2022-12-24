/*
Find fibinocci of n natural numbers
*/

#include <stdio.h>

int main() {
    int i, n, t1 = 0, t2 = 1, nextTerm;
    printf("Enter the number of terms: ");
    scanf("%d", &n);
    printf("Fibinocci Series of %d terms ", n);
    for (i = 1; i <= n; i++) {
        printf("\n%d ", t1);
        nextTerm = t1 + t2;
        t1 = t2;
        t2 = nextTerm;
    }
    return 0;
}
