%������������к����ƽ�
clear all
x=0:0.1*pi:4*pi;
y=sin(x);
%�趨��������
net.trainparam.epochs=10000;
%�����ʼ��
net=newff([0,4*pi],[8,8,8,8,1],{'tansig','logsig','logsig','tansig','tansig'});
%ѵ������
[net,tr,y1,e]=train(net,x,y);

X=0:0.01*pi:4*pi;
%���緺��
y2=sim(net,X);

subplot(2,1,2);
plot(X,y2);
title('�������')
grid on
subplot(2,1,1);
plot(x,y,'o');
title('ԭʼ����')
grid on