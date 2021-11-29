%Ham tinh dao ham theo thoi gian cua tin hieu
function y = differ(u, step)
% y = zeros(length(u));
%     for i = 1:(length(u)-1)
%         y(i) = diff(u)/step;
%     end
%     y(length(u)) = y(length(u)-1);
y = diff(u)/step;
y(length(u)) = y(length(u)-1);
end