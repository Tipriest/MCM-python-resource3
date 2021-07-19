%Ƕ��ˮӡ
clear all
a=imread('lena.tiff');           %����ԭͼ
A=im2double(a);                  %�������,�����Ϊ�ɴ����[0,1)double��
[U,S,V]=svd(A);                  %���������ֵ�ֽ� A=USV'
b=imread('baboon.tiff');         %����ˮӡͼƬ
B=im2double(b);   
[m,n]=size(S);
W=zeros(m,n);                    %W��¼ˮӡ
[m1,n1]=size(B);
for i=1:m1
  for j=1:n1
      W(i,j)=B(i,j);
  end
end
af=0.1;                          %Ƕ��ǿ��
S1=S+af*W;                       %ˮӡǶ��
[U1,S2,V1]=svd(S1);              %���¾����������ֵ�ֽ�
C=U*S2*V';                       %�õ���ˮӡ��ͼ��
imwrite(C,'��ˮӡ.jpg','jpg');

figure(1)
imshow(A)
title('δǶ��ˮӡͼ��')

figure(2)
imshow(C);
title('Ƕ��ˮӡ��ͼ��');

%��ˮӡ
[UU,S3,VV]=svd(C);                       %�Ժ���ˮӡͼ���ͼ���������ֵ�ֽ�
D=U1*S3*V1';                     %�����м����
E=(D-S)/af;                      %���ˮӡͼ��

figure(3)
imshow(E);
title('Ƕ��ˮӡͼ��');




