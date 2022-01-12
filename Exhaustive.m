func =  @(x) x.^2-sin(x);
x_start = -4;
x_finish = 6;
f_start = func(x_start);
N = 20;
step = (x_finish-x_start)/N;

x_next = x_start + step;
f_next = func(x_next);

iteration = 1;
disp('iteration  x_start  f(x_start)  x_next  f(x_next)')

while f_start > f_next 
        disp([iteration', x_start', func(x_start)', x_next', func(x_next)',])

        x_start = x_next;
        f_start = func(x_start);
        x_next = x_start + step; 
        f_next = func(x_next);
        iteration = iteration + 1;
end    

fprintf('The optimum point of the function is %5.4f', x_start)