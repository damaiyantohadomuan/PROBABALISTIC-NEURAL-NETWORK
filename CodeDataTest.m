%NOMOR B.1.a MeLoad DATA data_test_PNN.txt

tdfread('data_train_PNN.txt');
tdfread('data_test_PNN.txt');


DTrain = [att1,att2,att3,label];
DTest = [atr1,atr2,atr3];
    
%Buat Model
HASILTESTING = ModelTest(DTrain,DTest);

% NOMOR B.1.C , HASIL PREDIKSI 
disp([atr1,atr2,atr3,HASILTESTING]);

%MEMBUAT TEXT FILE 
prediksi = table(atr1,atr2,atr3,HASILTESTING);
writetable(prediksi,'prediksi.txt','Delimiter','\t','WriteRowNames',true);
type 'prediksi.txt'



