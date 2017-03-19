function y = ustep(t, t0)
%ustep is (t, t0) is unit step at t0
%A unit step defined as below:
% y = 0 if (t < t0)
% y = 1 if (t >= t0)
[m,n] = size(t);
% Check that t is a vector
if m~= 1 & n ~= 1
  error('t must be a vector');
end

y = zeros(m,n); % initialize output arrayfun
for k = 1 : length(y)
  if t(k) >= t0
    y(k) = 1;
  end
end