clear all
clc
maze=[0,0,0,0,0,0,0,0;
      0,1,1,1,1,0,1,0;
      0,0,0,0,1,0,1,0;
      0,1,0,0,0,0,1,0;
      0,1,0,1,1,0,1,0;
      0,1,0,0,0,0,1,1;
      0,1,0,0,1,0,0,0;
      0,1,1,1,1,1,1,0];%�Թ�:0Ϊ·,1Ϊǽ,-1Ϊ������
fx(1:4)=[1,-1,0,0];
fy(1:4)=[0,0,-1,1];
sq.pre=zeros(1,100);sq.x=zeros(1,100);sq.y=zeros(1,100);
qh=0;%��ͷָ��
qe=1;%��βָ��
maze(1,1)=-1;
%��һ��Ԫ�����
sq.pre(1)=0;sq.x(1)=1;sq.y(1)=1;

while qh-qe~=0
qh=qh+1;
bb=0;
for k=1:4
i=sq.x(qh)+fx(k);
j=sq.y(qh)+fy(k);
if check(i,j,maze)==1
qe=qe+1;%���
sq.x(qe)=i;sq.y(qe)=j;sq.pre(qe)=qh;
maze(i,j)=-1;

if i==8&j==8%���Ϊͼ���һ����
while qe~=0
sq.x(qe) 
sq.y(qe)    
qe=sq.pre(qe);
end 
bb=1;
break;
end %if
end %if
end
if bb==1
break
end
end%while