clear all
clc
%n�ʺ�����
n=8;
chess=zeros(1,n);
for i=1:n%������
chess(i)=i;
end
main=zeros(1,2*n-1);%��¼���Խ��ߵ�ʹ�����
deputy=zeros(1,2*n-1);%��¼�ӶԽ��ߵ�ʹ�����
number=0;
[chess,main,deputy,number]=justtry(1,n,chess,main,deputy,number);