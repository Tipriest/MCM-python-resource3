function [chess,main,deputy,number]=justtry(i,n,chess,main,deputy,number);
if i==9
number=number+1
chess
else
    for k=i:8
if main(i-chess(k)+n)==0&deputy(i+chess(k)-1)==0%�����̿ɼ�������(�������Խ��߿ɷ���)    
    t=chess(k);%����
    chess(k)=chess(i);
    chess(i)=t;
    main(i-chess(k)+n)=1;
    deputy(i+chess(k)-1)=1;
    [chess,main,deputy,number]=justtry(i+1,n,chess,main,deputy,number);%�ݹ�
    t=chess(k);%����
    chess(k)=chess(i);
    chess(i)=t;
    main(i-chess(k)+n)=0;
    deputy(i+chess(k)-1)=0;
end
    end
end
end%function 