clear all
%ͼ�����·�����Dijkstra�㷨
%�ڽӾ���(�����Ĺ�ϵ)
w=[0,2,4,inf,inf,inf,inf;  
   2,0,inf,3,3,1,inf;
   4,inf,0,2,3,1,inf;                      
   inf,3,2,0,inf,inf,1;                    
   inf,3,3,inf,0,inf,3;
   inf,1,1,inf,inf,0,4;
   inf,inf,inf,1,3,4,0];
n=size(w,1);%��¼ͼ�е���
for i=1:n
l(i)=w(1,i);%Ϊl(v)����ֵ
z(i)=1;     %Ϊz(v)����ֵ1
end
s=[];       %s����
s(1)=1;     %s���ϵĵ�1��Ԫ��Ϊ���
u=s(1);
k=1;        %k��¼����s�е������

while k<n   %������sδ��������Ԫ�ص�ʱ��ִ��ѭ��
 for i=1:n  %����һ��l(v),z(v)
 if l(i)>l(u)+w(u,i)
 l(i)=l(u);
 z(i)=u;
 end
 end
%��l(i)����С��v����s����
 ll=l;
 for i=1:n
 for j=1:k
     if i==s(j)
     ll(i)=inf;%ȥ�����Ѿ���s�����еĵ�
     end 
 end
 end
[lv,v]=min(ll);%����С��l(v)
s(k+1)=v;      %���뼯��s
u=v;
k=k+1;
end

fprintf('���·Ϊ:%1d->%1d->%1d->%1d\n',z(z(z(7))),z(z(7)),z(7),7)

