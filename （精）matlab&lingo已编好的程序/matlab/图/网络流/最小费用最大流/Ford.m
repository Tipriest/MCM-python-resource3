function [minroad,s]=Ford(w)          %ע����ļ���һ��ҪΪFord.m
%ͼ�����·��Ford�����㷨
%wΪ�ڽӾ���(�����Ĺ�ϵ)
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
minroad=p(n);