%MODEL AKURASI B.1.b
function HASILTESTING = ModelTest(DTrain,DTest)
ntrain = 150;
ntest = 30;

DataTrain = DTrain(1:ntrain,1:4);
DataTest= DTest(1:ntest,1:3);
tahoe = 0.6;
  
for (i=1:ntest);
    for (j=1:ntrain);
        Hasil(j,i) = Rumus(DTrain,DTest,i,j,tahoe);
    end   
end
Hasil(1:ntrain,51)=DTrain(1:ntrain,4);
HASILTESTING = [];

for (i = 1:ntest); % test
    Jumlah0 = 0;
    Jumlah1 = 0;
    Jumlah2 = 0;
    for (j = 1:ntrain); %train
        if (Hasil(j,51)==0);
            Jumlah0=Jumlah0+Hasil(j,i);
        elseif (Hasil(j,51)==1);
            Jumlah1=Jumlah1+Hasil(j,i); 
        else  (Hasil(j,51)==2);
             Jumlah2=Jumlah2+Hasil(j,i);
        end
    end
    
    if (Jumlah0>Jumlah1);
        if(Jumlah0>Jumlah2);
            HASILTESTING(i,1) = 0;
        else 
            HASILTESTING(i,1)= 2;
        end
      else 
        if(Jumlah1>Jumlah2);
            HASILTESTING(i,1) = 1;
        else 
            HASILTESTING(i,1)= 2;
        end
      end      
end
end

