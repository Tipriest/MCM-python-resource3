clear all
%ͼ������������� Ford-Fulkerson����㷨
n=6;%��������
%CΪ�������ڽӵľ���
C=[0,16,20,0,0,0;
   0,0,0,10,10,0;
   0,0,0,6,6,0;
   0,0,0,0,0,10;
   0,0,0,0,0,16;
   0,0,0,0,0,0];
f=zeros(n,n);%FΪ��,��ʼ��Ϊ0��

while 1%��ѭ��

%��Ź���
%��ų�ʼ��
No=zeros(1,6);d=zeros(1,6);%No��¼�õ��ŵĻ�õ� d��¼������
No(1)=n+1;d(1)=inf;%������Vs���
while 1%���ѭ��
pd=0;
for i=1:n
for j=1:n
if No(i)~=0%ѡ��һ���ѱ�ŵĵ�x
if No(j)==0%��������δ����ڽӵ�y
if C(i,j)>0%��(x,y)��һ����ʱ
if f(i,j)<C(i,j)%�ж�����������
No(j)=i;        %��� 
d(j)=min([C(i,j)-f(i,j),d(i)]);
pd=1;
end
end
if C(j,i)>0%��(y,x)��һ����ʱ
if f(j,i)>0%�ж�����������
No(j)=-i;   %���
d(j)=min([f(j,i),d(i)]);
pd=1;
end
end
end
end
end
end

if No(n)==1%��Vt���Ϻ�ʱ�������ѭ��
break;
end
if pd==0; %���޷����ʱ�������ѭ��
break;
end
end

if No(n)==0%��Vt�޷����Ϻ�ʱ������ѭ����ʱ���������
break;
end

%��������
t=n;%tΪ���ڵ����ĵ�
for i=1:n %����ѭ��
if No(t)>0%�������������
f(No(t),t)=f(No(t),t)+d(n);
end
if No(t)<0%���������ļ�С 
f(t,abs(No(t)))=f(t,abs(No(t)))-d(n);
end

if abs(No(t))==1%�����һ����Ϊ������������ѭ��
break;
else
t=abs(No(t));%�����������ε�   
end
end

end
f%��ʾ�����
wf=0;
for i=1:n
wf=f(1,i)+wf;
end
wf%��ʾ���������
No%��ʾ��С��