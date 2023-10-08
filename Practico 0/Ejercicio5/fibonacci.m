#Escribir una funi´on fibonacci que reciba un n´umero natural n y devuelva un vector conteniendo
#los primeros n+1 n´umeros en la sucesi´on de Fibonacci.

function result = fibonacci(n)
  result = zeros(1,n+1);
  result(1) = 0;
  result(2) = 1;
  for i = 3:n+1
    result(i) = result(i-1) + result(i-2);
  endfor