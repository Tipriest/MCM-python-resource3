function [board,amount]=cover(i,j,k,l,board,size,amount)%(i,j)Ϊ���Ͻ� (k,l)��ȱ sizeΪ��ģ amountΪƬ��
if size==1
    return
end
amount=amount+1;
size=size/2;
if (k<size+i)&(l<size+j)%��ȱλ����������  
board(size+i-1,size+j)=amount;board(size+i,size+j)=amount;board(size+i,size+j-1)=amount;%����
[board,amount]=cover(i,j,k,l,board,size,amount);[board,amount]=cover(i,j+size,size+i-1,j+size,board,size,amount);
[board,amount]=cover(size+i,size+j,size+i,size+j,board,size,amount);[board,amount]=cover(i+size,j,i+size,j+size-1,board,size,amount);
elseif (k>=size+i)&(l<size+j)%��ȱλ����������
board(size+i-1,size+j)=amount;board(size+i,size+j)=amount;board(size+i-1,size+j-1)=amount;%����
[board,amount]=cover(i+size,j,k,l,board,size,amount);[board,amount]=cover(i,j+size,size+i-1,j+size,board,size,amount);
[board,amount]=cover(size+i,size+j,size+i,size+j,board,size,amount);[board,amount]=cover(i,j,i+size-1,j+size-1,board,size,amount);
elseif (k<size+i)&(l>=size+j)%��ȱλ����������
board(size+i,size+j-1)=amount;board(size+i,size+j)=amount;board(size+i-1,size+j-1)=amount;%����
[board,amount]=cover(i,j+size,k,l,board,size,amount);[board,amount]=cover(i,j,i+size-1,j+size-1,board,size,amount);
[board,amount]=cover(size+i,size+j,size+i,size+j,board,size,amount);[board,amount]=cover(i+size,j,i+size,j+size-1,board,size,amount);
elseif (k>=size+i)&(l>=size+j)%��ȱλ����������
board(size+i,size+j-1)=amount;board(size+i-1,size+j)=amount;board(size+i-1,size+j-1)=amount;%����
[board,amount]=cover(size+i,size+j,k,l,board,size,amount);[board,amount]=cover(i,j+size,size+i-1,j+size,board,size,amount);
[board,amount]=cover(i,j,i+size-1,j+size-1,board,size,amount);[board,amount]=cover(i+size,j,i+size,j+size-1,board,size,amount);
end

end