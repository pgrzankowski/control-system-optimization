x1 = out.x1.Data;
x2 = out.x2.Data;
x3 = out.x3.Data;
time = out.x1.Time;

x1_hat = out.x1_hat.Data;
x2_hat = out.x2_hat.Data;
x3_hat = out.x3_hat.Data;
time_hat = out.x1_hat.Time;

u = out.u.Data;
time_u = out.u.Time;

figure
plot(time, x1)
hold on
plot(time, x2)
plot(time, x3)
hold off
grid on
xlabel("Czas (s)")
ylabel("x")
legend("$x_1$", "$x_2$", "$x_3$", 'Interpreter', 'Latex')

figure
plot(time_u, u)
grid on
xlabel("Czas (s)")
ylabel("u")

figure
plot(time_hat, x1_hat)
hold on
plot(time_hat, x2_hat)
plot(time_hat, x3_hat)
hold off
grid on
xlabel("Czas (s)")
ylabel("x")
legend("$\hat{x}_1$", "$\hat{x}_2$", "$\hat{x}_3$", 'Interpreter', 'Latex')
