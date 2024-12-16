% First run model in simulink to load data into Workspace

time = out.reg.Time;
data = out.reg.Data;

time_x = out.x1.Time;
x1 = out.x1.Data;
x2 = out.x2.Data;
x3 = out.x3.Data;

figure
plot(time, data)
grid on
xlabel("czas (s)")
ylabel("y")

figure
plot(time_x, x1)
hold on
plot(time_x, x2)
plot(time_x, x3)
hold off
grid on
xlabel("Czas (s)")
ylabel("x")
legend("$x_1$", "$x_2$", "$x_3$", 'Interpreter', 'Latex')