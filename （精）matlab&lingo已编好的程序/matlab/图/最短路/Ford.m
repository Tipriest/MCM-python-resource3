clear all
%ͼ�����·��Ford�����㷨
%�ڽӾ���(�����Ĺ�ϵ)
w=[0,2,4,inf,inf,inf,inf;  
   2,0,inf,3,3,1,inf;
   4,inf,0,2,3,1,inf;                      
   inf,3,2,0,inf,inf,1;                    
   inf,3,3,inf,0,inf,3;
   inf,1,1,inf,inf,0,4;
   inf,inf,inf,1,3,4,0];
n=size(w,1);%��¼ͼ�е���

%����ֵ
for i=1:n
p(i)=inf;%V1��Vi�����·����Ϊp(i)
s(i)=i;%V1��Vi�����·��Vi��ǰһ�����Ϊs(i)
end
p(1)=0;
s(1)=1;

while 1
pd=0;
for i=2:n
for j=1:n
if p(i)>p(j)+w(j,i) %�����i���и��̵�·
p(i)=p(j)+w(j,i);   %����p(i)
s(i)=j;             %����s(i)
pd=1;
end    
end
end
if pd==0            %���е�p(i)���ޱ仯��ֹѭ��
break;
end
end
p(n)
