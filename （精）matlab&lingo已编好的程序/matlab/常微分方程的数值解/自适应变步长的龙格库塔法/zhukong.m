if exist('f.m')==0                                           
   disp('û��Ϊ���̴�����Ϊf.m�ĺ����ļ�,���������������');
   disp('function z=f(x,y)');
   disp('z=y-2*x/y;');
   disp('�������ļ�������work�ļ�����');
end 

if exist('half.m')==0                                       
   disp('��work�ļ�����û��half.m�ļ�');
end 


eps=10^(-8);
x1=input('�������ʼ��x1=');
y1=input('�������ʼ����y1=');
xn=input('��������ֹ����xn=');
h1=input('�������ʼ����h1=');
h=h1;

fprintf('h=%10.8f,x=%10.8f,y=%10.8f\n',h,x1,y1);          %�����ʼ����

if h>abs(x1-xn)
    disp('��ʼ����ȡ�ù��󣬳������������ĳ���')
    break
end

while x1<=xn
    [u2,v2,h,err]=half(x1,y1,h);
    H=h;
    half_err=err;
    double_err=err;
    
    while half_err>eps                                    %��������ʱ��������С����
    H=h;
    [u2,v2,h,err]=half(x1,y1,H);
    half_err=err;
    end
    
    while double_err<eps                                  %������Сʱ�����Ͻ���������
    H=2*H;
    [u2,v2,h,err]=half(x1,y1,H);
    double_err=err;
    end
    
    if double_err>=eps                                   %�����ʣ������е�������                                   
        H=H/2;
        [u2,v2,h,err]=half(x1,y1,H);
    end
    
    fprintf('h=%10.8f,x=%10.8f,y=%10.8f\n',H,u2,v2);      %����˵���
    x1=u2;                                                %Ϊ��һ�ڵ�ļ����ṩ��ʼֵ
    y1=v2;
    h=h1;
    
end    