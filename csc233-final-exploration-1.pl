volume(R, Volume) :- Volume is 4 / 3 * pi * R * R * R.

sumDigit(0, 0).
sumDigit(N, Sum) :- Digit is mod(N, 10), N1 is N // 10, sumDigit(N1, Total), Sum is Digit + Total.

april(1, "Monday").
april(2, "Tuesday").
april(3, "Wednesday").
april(4, "Thursday").
april(5, "Friday").
april(6, "Saturday").
april(0, "Sunday").
april(Date, Day) :- D is mod(Date, 7), april(D, Day).

may(1, "Wednesday").
may(2, "Thursday").
may(3, "Friday").
may(4, "Saturday").
may(5, "Sunday").
may(6, "Monday").
may(0, "Tuesday").
may(Date, Day) :- D is mod(Date, 7), may(D, Day).

summation(0, 0).
summation(N, Sum) :- Value is N * N * N, N1 is N - 1, summation(N1, Total), Sum is Total + Value.