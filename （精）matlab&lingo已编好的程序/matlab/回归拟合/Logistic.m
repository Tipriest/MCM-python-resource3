clear all
y=[3.9 5.3 7.2 9.6 12.9 17.1 23.2 31.4 38.6 50.2 62.9...
    76.0 92.0 106.5 123.2 131.7 150.7 179.3 204.0 226.5 251.4 281.4]';
x=(1:22)';
beta0=[400,3.0,0.20]';
%�����Իع�   'Logisfun'Ϊ�ع�ģ��
[beta,r,j]=nlinfit(x,y,'Logisfun',beta0);
%beta0Ϊ�ع�ϵ����ʼ������
%betaΪ�ع�ϵ��
%rΪ�в�

%�����ϱ��ʽ:
fprintf('�ع鷽��Ϊy=%5.4f/(1+%5.4f*exp(-%5.4f*x))\n',beta(1),beta(1)/beta(2)-1,beta(3))

%���������:
rmse=sqrt(sum(r.^2)/22);
rmse

%Ԥ��������ƣ�
[Y,DELTA]=nlpredci('Logisfun',x,beta,r,j);
%DELTAΪ�����
%YΪԤ��ֵ(��Ϻ�ı��ʽ��ֵ)
plot(x,Y,x,y,'o',x,Y+DELTA,':',x,Y-DELTA,':')
