function y=f_coreloss(x)
% 优化参数，使目标函数值最小
global Bm Fre Pcv n_max m

error = 0;% 初始目标函数误差为0
Pcv_cal = 0;% 描述公式计算值

for i=1:m
    for j=1:n_max
        Pcv_cal = x(1)*Fre(i)^x(2)*Bm(j,i)^x(3);
        error = error+(Pcv(j,i)-Pcv_cal)^2;
    end
end

y = sqrt(double(error)/(m*n_max));
end
    



