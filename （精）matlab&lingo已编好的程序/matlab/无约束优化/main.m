clear all
%��Լ���Ż��ľ����㷨��Ǿ����㷨�Ƚ�
%ʹ��rosenbrock����,���ۼ�ֵΪ0
if exist('rosenbrock.m')==0                                       
   disp('û��Ϊ���̴�����Ϊrosenbrock.m�ĺ����ļ�,�뽨����');
end 

%��ͼ
[x,y]=meshgrid(-1:0.05:1,-1:0.05:1);
z=100*(y-x.^2).^2+(1-x).^2;
surf(x,y,z)

%�����㷨:
[x1,fval1,exitflag1,output1]=fminunc('rosenbrock',[0,0]);%��ʼ��Ϊ(0,0)
%xΪ��
%fvalΪĿ�꺯��x����ֵ
%exitflag>0��ʾ������������x��
%output��:Iterations��ʾ��������
%         Algorithm��ʾ�����㷨
%         FuncCount��ʾ�������۴���

%�Ŵ��㷨
%�����������Ĵ���1���,��Ⱥ��ģΪ200
options=gaoptimset('Generations',10000,'PopulationSize',200);
%������������,����0<=x1,x2<=2
[x2,fval2,exitflag2,output2]=ga(@rosenbrock,2,[1,0;0,1;-1,0;0,-1],[2;2;0;0],[],[],[],[],[],options);
%exiflag>0��ʾ���ɹ�
