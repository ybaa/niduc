function [ ] = OEE( danePrzed, zakres)%Overall equipment effectivess

A=[];
k_arr=[];
push=1;
i = 1;

   while(i < 600)
    
       disp(i);
       [ddd,ileErr, zakres2] = syncSimulation(danePrzed, zakres, i); 
       k_arr(push)=i;
       
       A(push)=(zakres2 - ileErr)/(zakres2);
       
       push=push+1;
       i = i + 16;
   end
    
   plot(k_arr,A)

end

