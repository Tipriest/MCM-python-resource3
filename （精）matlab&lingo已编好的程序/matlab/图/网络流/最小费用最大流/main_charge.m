clear all
%ͼ����С����������������
%�����δ֪
%CΪ�����ڽӾ���
C=[0 8 7 0 0 0;
   0 0 5 9 0 0;
   0 0 0 0 9 0;
   0 0 2 0 0 5;
   0 0 0 6 0 10;
   0 0 0 0 0 0];
%BΪ�����ڽӾ���
B=[0 2 8 0 0 0;
   0 0 5 2 0 0;
   0 0 0 0 3 0;
   0 0 1 0 0 6;
   0 0 0 4 0 7;
   0 0 0 0 0 0];
n=6;%6����
f=zeros(n,n);%��ʼ��Ϊ0��
w=ones(n,n)*inf;%�ڽӾ����ʼ��

while 1
%����С������
%ȷ�������ڽӾ���
for i=1:6
for j=1:6
if i==j
w(i,j)=0;
end   
if C(i,j)>0 %�������(i,j)������(·),�ٶ�w��������
if f(i,j)<C(i,j)
w(i,j)=B(i,j);
end
if f(i,j)==C(i,j)
w(i,j)=inf;
end
if f(i,j)>0
w(j,i)=-B(i,j);
end
if f(i,j)==0
w(j,i)=inf;
end
end
end
end

%ʹ��Ford�㷨�����·
[minroad,s]=Ford(w);

if minroad==inf%�������ڷ������·,��������С�������������ѭ��
break;
end

%����������
%��¼���·
t=n;
R=[n]; 
while 1
R=[R,s(t)];
if s(t)==1%�ҵ����·�ĳ�ʼ��ʱ����ѭ��
break;
end
t=s(t);
end
%ͳ��R�е���
for i=1:n
if R(i)==1
break;
end
end
number=i;%numberΪ����

%��������
%ȷ��������
for j=number-1:-1:1
if C(R(j+1),R(j))>0%����������
r(j)=C(R(j+1),R(j))-f(R(j+1),R(j));
end
if C(R(j),R(j+1))>0%����Ǹ����
r(j)=f(R(j),R(j+1));
end
end
dvt=min(r);%ȷ��������
%����
for j=number-1:-1:1
if C(R(j+1),R(j))>0%����������
f(R(j+1),R(j))=f(R(j+1),R(j))+dvt;
end
if C(R(j),R(j+1))>0%����Ǹ����
f(R(j),R(j+1))=f(R(j),R(j+1))-dvt;
end
end

end
f %��ʾ��С���������

wf=0;
for i=1:n
wf=wf+f(1,i);
end
wf %��ʾ����

zwf=0;
for i=1:n
for j=1:n
zwf=zwf+f(i,j)*B(i,j);
end
end
zwf %��ʾ����