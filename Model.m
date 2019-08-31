%NOMOR A.3 MODEL AKURASI 

function AKURASI = Model(DT)
ntrain = 100;
ntest = 50;

DataTestNew = DT(101:150,1:4);
DataTrainNew = DT(1:100,1:4);
tahoe = 0.6;
  
for (i=1:ntest);
    for (j=1:ntrain);
        Hasil(j,i) = Rumus(DataTrainNew,DataTestNew,i,j,tahoe);
    end   
end
Hasil(1:ntrain,51)=DT(1:ntrain,4);
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
    disp(Jumlah0)
    disp(Jumlah1)
    disp(Jumlah2)
    disp('-------------');
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

LabelDataTrainNew = DataTrainNew(1:ntest,4);%test
AKURASI = akurasii(HASILTESTING,LabelDataTrainNew,ntest)*100;


disp('HASIL AKURASI : ');
disp(AKURASI);

end