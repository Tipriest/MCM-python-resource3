function [chess,row,main,deputy,number]=justtry(i,n,chess,row,main,deputy,number);
for k=1:8
if row(k)==0&main(i-k+n)==0&deputy(i+k-1)==0%�����̿ɼ�������
    chess(i,k)=1;
    row(k)=1;
    main(i-k+n)=1;
    deputy(i+k-1)=1;
    if i==8%���������������   
        number=number+1
        chess
    else%û�н�����������
    [chess,row,main,deputy,number]=justtry(i+1,n,chess,row,main,deputy,number);%�ݹ�
    end
    chess(i,k)=0;%����
    row(k)=0;
    main(i-k+n)=0;
    deputy(i+k-1)=0;
end
end