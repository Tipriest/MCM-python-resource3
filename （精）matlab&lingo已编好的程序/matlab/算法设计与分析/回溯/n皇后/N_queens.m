clear all
clc
%n�ʺ�����
n=8;
chess=zeros(n,n);
row=zeros(1,n);%��¼n�б�ռ�õ����
main=zeros(1,2*n-1);%��¼���Խ��ߵ�ʹ�����
deputy=zeros(1,2*n-1);%��¼�ӶԽ��ߵ�ʹ�����
number=0;
[chess,row,main,deputy,number]=justtry(1,n,chess,row,main,deputy,number);