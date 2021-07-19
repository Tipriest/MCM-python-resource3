%lny=lna+bx
clear all
y=[3.9 5.3 7.2 9.6 12.9 17.1 23.2 31.4 38.6 50.2 62.9 76.0];
%YΪ������
Y=log(y');
x=1:12;
%XΪ����
X=[ones(12,1),x'];
[b,bint,r,rint,stats]=regress(Y,X);
%bΪ�����ĵ����
disp('bΪ�����ĵ����')
b
%bintΪ�������������
disp('bintΪ�������������')
bint
%stats(1)Ϊ���ϵ��Խ�ӽ�1�ع鷽��Խ����
disp('stats(1)')
stats(1)
%stats(2)ΪFֵԽ��ع�Խ����
disp('stats(2)')
stats(2)
%stats(3)Ϊ��F��Ӧ�ĸ���P P<aʱģ�ͳ���
disp('stats(3)')
stats(3)
%���������RMSE
a=exp(b(1));
yy=a.*exp(b(2).*x);
rmse=sqrt(sum((yy-y).^2)/12);
disp('rmse')
rmse
%д�����ʽ
fprintf('�ع鷽��Ϊy=%5.4f*exp(%5.4fx)',a,b(2))
%���ع�ͼ��
figure(1)
plot(x,y,'o',x,yy)
%���β�ͼ
figure(2)
rcoplot(r,rint)

