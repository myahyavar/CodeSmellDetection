int f(int n) {
    int i= n+56;
    if (n == 0) {
        return 1;
    } else {
        return n * f(n-1);
    }
}