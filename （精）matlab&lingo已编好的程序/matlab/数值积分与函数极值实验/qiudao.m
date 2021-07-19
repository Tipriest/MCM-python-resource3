clear all
syms x;
y=(x^2-1)^3+1;
y1=diff(y,x);                       %y��x��һ�׵�
y2=diff(y,x,2);                     %y��x����׵�
subplot(3,1,1);                     %��ͼ�δ��ڷֳ�3��1���֣��������1����
ezplot(y,[-1.5,1.5]);               %�Է��ź�����[-1.5,1.5]�ϻ�ͼ
subplot(3,1,2);
ezplot(y1,[-1.5,1.5]);
subplot(3,1,3);
ezplot(y2,[-1.5,1.5]);
%ͨ������Ϊ0�ĵ�����ֵ
x0=solve('6*(x^2-1)^2*x=0','x');    %���һ�׵���(��workspace�еõ�)Ϊ0�ĵ�
y0=subs(y,x,x0);                    %��x0����y�е�x
[ymin1,n]=min(eval(y0));            %��y0����Сֵ
xmin1=x0(n);
%ͨ��fminbnd������ֵ
f=inline('(x^2-1)^3+1','x');
xmin2=fminbnd(f,-1.5,1.5);          %��[-1.5,1.5]����f��������Сֵ��    
ymin2=f(xmin2);