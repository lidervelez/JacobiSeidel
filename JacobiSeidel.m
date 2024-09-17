A = [3 -0.1 -0.2;
     0.1 7 -0.3;
     0.3 -0.2 10];
b = [7.85; -19.3; 71.4];

tol = 0.001;
max_iter = 100;

n = length(b);
x = zeros(n, 1);
iter = 0;

while iter < max_iter
    x_old = x;
    iter += 1;

    for i = 1:n
        sum = 0;
        for j = 1:n
            if j != i
                sum += A(i, j) * x(j);
            end
        end
        x(i) = (b(i) - sum) / A(i, i);
    end

    if norm(x - x_old, inf) < tol
        break;
    end
end

disp("Solución (x):");
disp(x);

disp("Número de iteraciones:");
disp(iter);

