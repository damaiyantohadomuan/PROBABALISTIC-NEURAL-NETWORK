function akurasi = akurasii(HASILTESTING,LabelDataTrainNew,ntest)  
    Jumlah =0;
    for (i=1:ntest)
        if(HASILTESTING(i,1)==LabelDataTrainNew(i,1))
            Jumlah=Jumlah+1;
        end
    end
akurasi = Jumlah/50;
end