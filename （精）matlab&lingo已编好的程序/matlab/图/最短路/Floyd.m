clear all
%ͼ�����·�����Floyd�㷨
%�ڽӾ���(�����Ĺ�ϵ)
w=[0,2,4,inf,inf,inf,inf;  
   2,0,inf,3,3,1,inf;
   4,inf,0,2,3,1,inf;                      
   inf,3,2,0,inf,inf,1;                    
   inf,3,3,inf,0,inf,3;
   inf,1,1,inf,inf,0,4;
   inf,inf,inf,1,3,4,0];
n=size(w,1);%n��¼ͼ�е���
D=w;        %DΪ�������
R=[];       %RΪ·������

for i=1:n
    for j=1:n
R(i,j)=j;   %ΪR���󸳳�ֵ
end
end

for k=1:n  

    for i=1:n %����D,R
       for j=1:n
          if D(i,k)+D(k,j)<D(i,j) %�ж��Ƿ������������  
          D(i,j)=D(i,k)+D(k,j);
          R(i,j)=k;
          end
       end
    end
end
D
R
