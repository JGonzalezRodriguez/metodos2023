function result = norma(v)
  result = 0;
  for i = 1:length(v)
    result = result + v(i)^2;
  end
  result = sqrt(result);
  fprintf('norma(%s) = %d\n', num2str(v), result);
endfunction