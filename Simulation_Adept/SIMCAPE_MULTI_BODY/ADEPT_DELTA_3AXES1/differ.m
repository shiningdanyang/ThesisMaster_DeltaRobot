%Hamf tinhs ddaoj hamf theo thoiwf gian cuar tins hieeuj
function y = differ(u, step)
% y = zeros(length(u));
%     for i = 1:(length(u)-1)
%         y(i) = diff(u)/step;
%     end
%     y(length(u)) = y(length(u)-1);
y = diff(u)/step;
y(length(u)) = y(length(u)-1);
end