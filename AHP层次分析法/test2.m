clear;clc

%%这是单行注释
a=5;


% b=1
% c=2

% 清除工作区所有的变量
% clear

% 清除命令行窗口
% clc

% 文件开头初始化，防止其他文件对其有干扰
% clear;clc

%%输入输出函数
disp("我叫郑晖")

a = [1,2,3];

disp(a)

% 合并函数
% 第一种
strcat('我是','郑晖')

% 第二种
['a','b']


% 将数字转换为字符串
c = 100;
num2str(c)
disp(['c的值为：',num2str(c)])


% input输入函数
A = input('请输入A的值：')
B = input('请输入B的值：')

disp(['A的值为：',num2str(A)])
disp(['B的值为：',num2str(B)])





