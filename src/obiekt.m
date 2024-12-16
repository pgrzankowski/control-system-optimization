% Macierze
num = [1 4 7/4];
den = [1 15 74 120];
[A, B, C, D] = tf2ss(num, den);
disp(A); disp(B); disp(C); disp(D);
[numerator, denumerator] = ss2tf(A, B, C, D);


% Regulator
s_b = -3.4;
k = acker(A, B, [s_b s_b s_b]);

% Obserwator
s_0 = -10;
L = acker(A', C', [s_0, s_0, s_0])';
disp(L)
