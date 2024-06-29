function y=f_coreloss(x)
% 优化参数，使目标函数值最小
% 输入x=[x1 x2 x3 x4 x5 x6 x7 x8 x9 x10]10个描述公示的待定参数;输出目标函数误差
global Bac Fre Pcv n m

error = 0;% 初始目标函数误差为0
Pcv_cal = 0;% 描述公式计算值

for i=1:m
    for j=1:n
        Pcv_cal = x(1)*Fre(i)^x(2)*Bac(j)^x(3);
        error = error+(Pcv(j,i)-Pcv_cal)^2;
    end
end

y = sqrt(double(error)/(m*n));
end
    



